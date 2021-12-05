import 'package:cook_book_fat_killers/common/nav.dart';
import 'package:cook_book_fat_killers/domain/models/recipe.dart';
import 'package:cook_book_fat_killers/widgets/base_widgets.dart';
import 'package:cook_book_fat_killers/widgets/domain_colors.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';

import '../../stubs.dart';
import 'bloc/bloc.dart';

class RecipeWidget extends StatelessWidget {
  final bloc = RecipeBloc();
  late RecipeModel _recipeModel;

  @override
  Widget build(BuildContext context) {
    final arguments = dartz
        .cast<RecipeScreenBundle>(ModalRoute.of(context)?.settings.arguments);
    _recipeModel = arguments.recipeModel;
    bloc.inputsSink.add(RecipeEvent.show(_recipeModel));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_recipeModel.eatingType.title.toUpperCase()),
        backgroundColor: getDomainColor(_recipeModel.eatingType.eatingType),
        actions: [
          StreamBuilder<RecipeState>(
            stream: bloc.outputsStream,
            initialData: RecipeState.initial(),
            builder: (context, snapshot) {
              if (snapshot.data is RecipeStateInitial) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.favorite_border),
                );
              } else if (snapshot.data is RecipeStateLoaded) {
                final stateLoaded = snapshot.data as RecipeStateLoaded;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: IconButton(
                    icon: Icon(stateLoaded.isFavourites == true
                        ? Icons.favorite
                        : Icons.favorite_border),
                    onPressed: () {
                      bloc.inputsSink.add(RecipeEvent.toggle(
                          selected: !stateLoaded.isFavourites,
                          recipeModel: _recipeModel));
                    },
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
      body: Container(
        color: colorMainBackground,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              _getTitle(),
              _getImage(),
              _getEatingType(),
              _getWeights(),
              _ingridients(),
              _cookingSteps(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getTitle() {
    return Text(
      _recipeModel.title.toUpperCase(),
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _getImage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(stubFoodImages[1]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _getEatingType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildEatingTab(
          'ПРИЙОМ ЇЖІ',
          colorBaseAccent,
          padding: 12,
          fontSize: 18,
        ),
        buildEatingTab(
          _recipeModel.eatingType.title.toUpperCase(),
          getDomainColor(_recipeModel.eatingType.eatingType),
          padding: 12,
          fontSize: 18,
        ),
      ],
    );
  }

  Widget _getWeights() {
    final quantities = _recipeModel.mealQuantityModel.quantities;
    final calloriesModels = quantities.keys.toList();
    List<Widget> widgets = [];
    for (int i = 0; i < calloriesModels.length; i++) {
      widgets.add(Text(
          '${calloriesModels[i].calories} - ${quantities[calloriesModels[i]]}',
          style: usualTextStyle()));
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  Widget _ingridients() {
    final ingredientsList = _recipeModel.ingredientsModel.ingredients;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: buildEatingTab('ІНГРЕДІЄНТИ', colorBaseAccent,
                    padding: 12, fontSize: 18),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ingredientsList
                .map((ingr) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text('- ${ingr.description}',
                          style: usualTextStyle()),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _cookingSteps() {
    final steps = _recipeModel.stepsModel.steps;
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildEatingTab('ПРОЦЕС ПРИГОТУВАННЯ', colorBaseAccent,
                    padding: 12, fontSize: 18),
              ),
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: steps
                  .map(
                    (step) => ListTile(
                      leading: Icon(Icons.food_bank, color: colorBaseAccent),
                      title: Text(step, style: usualTextStyle()),
                    ),
                  )
                  .toList()),
        ],
      ),
    );
  }

  TextStyle usualTextStyle() =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
}
