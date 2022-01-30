#-------------------------------------------------
#
# Project created by QtCreator 2021-03-21T16:58:18
#
#-------------------------------------------------

QT       += core gui xml opengl svg
CONFIG += c++14 c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = bezie_and_triangulation
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    ../Загрузки/cpp-spline/spline/src/main/cpp/Bezier.cpp \
    ../Загрузки/cpp-spline/spline/src/main/cpp/BSpline.cpp \
    ../Загрузки/cpp-spline/spline/src/main/cpp/CatmullRom.cpp \
    ../Загрузки/cpp-spline/spline/src/main/cpp/Curve.cpp \
    ../Загрузки/cpp-spline/spline/src/main/cpp/Vector.cpp

HEADERS += \
        mainwindow.h \
    ../Загрузки/cpp-spline/spline/src/main/cpp/Bezier.h \
    ../Загрузки/cpp-spline/spline/src/main/cpp/BSpline.h \
    ../Загрузки/cpp-spline/spline/src/main/cpp/CatmullRom.h \
    ../Загрузки/cpp-spline/spline/src/main/cpp/Curve.h \
    ../Загрузки/cpp-spline/spline/src/main/cpp/Vector.h \
    ../../../usr/local/include/eigen3/Eigen/src/Cholesky/LDLT.h \
    ../../../usr/local/include/eigen3/Eigen/src/Cholesky/LLT.h \
    ../../../usr/local/include/eigen3/Eigen/src/Cholesky/LLT_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/CholmodSupport/CholmodSupport.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AltiVec/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AltiVec/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AltiVec/MatrixProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AltiVec/MatrixProductCommon.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AltiVec/MatrixProductMMA.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AltiVec/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX512/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX512/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX512/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/AVX512/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/CUDA/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/Default/BFloat16.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/Default/ConjHelper.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/Default/GenericPacketMathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/Default/GenericPacketMathFunctionsFwd.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/Default/Half.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/Default/Settings.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/Default/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/GPU/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/GPU/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/GPU/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/HIP/hcc/math_constants.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/MSA/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/MSA/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/MSA/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/NEON/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/NEON/GeneralBlockPanelKernel.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/NEON/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/NEON/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/NEON/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SSE/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SSE/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SSE/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SSE/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SVE/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SVE/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SVE/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SYCL/InteropHeaders.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SYCL/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SYCL/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SYCL/SyclMemoryModel.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/SYCL/TypeCasting.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/ZVector/Complex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/ZVector/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/arch/ZVector/PacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/functors/AssignmentFunctors.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/functors/BinaryFunctors.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/functors/NullaryFunctors.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/functors/StlFunctors.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/functors/TernaryFunctors.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/functors/UnaryFunctors.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/GeneralBlockPanelKernel.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrix_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrixTriangular.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/GeneralMatrixMatrixTriangular_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/GeneralMatrixVector.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/GeneralMatrixVector_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/Parallelizer.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixMatrix_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixVector.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/SelfadjointMatrixVector_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/SelfadjointProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/SelfadjointRank2Update.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/TriangularMatrixMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/TriangularMatrixMatrix_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/TriangularMatrixVector.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/TriangularMatrixVector_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/TriangularSolverMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/TriangularSolverMatrix_BLAS.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/products/TriangularSolverVector.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/BlasUtil.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/ConfigureVectorization.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/Constants.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/DisableStupidWarnings.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/ForwardDeclarations.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/IndexedViewHelper.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/IntegralConstant.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/Macros.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/Memory.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/Meta.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/MKL_support.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/NonMPL2.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/ReenableStupidWarnings.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/ReshapedHelper.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/StaticAssert.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/SymbolicIndex.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/util/XprHelper.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/ArithmeticSequence.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Array.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/ArrayBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/ArrayWrapper.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Assign.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Assign_MKL.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/AssignEvaluator.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/BandMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Block.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/BooleanRedux.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CommaInitializer.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/ConditionEstimator.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CoreEvaluators.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CoreIterators.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CwiseBinaryOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CwiseNullaryOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CwiseTernaryOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CwiseUnaryOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/CwiseUnaryView.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/DenseBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/DenseCoeffsBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/DenseStorage.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Diagonal.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/DiagonalMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/DiagonalProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Dot.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/EigenBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/ForceAlignedAccess.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Fuzzy.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/GeneralProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/GenericPacketMath.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/GlobalFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/IndexedView.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Inverse.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/IO.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Map.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/MapBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/MathFunctions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/MathFunctionsImpl.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Matrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/MatrixBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/NestByValue.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/NoAlias.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/NumTraits.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/PartialReduxEvaluator.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/PermutationMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/PlainObjectBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Product.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/ProductEvaluators.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Random.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Redux.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Ref.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Replicate.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Reshaped.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/ReturnByValue.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Reverse.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Select.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/SelfAdjointView.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/SelfCwiseBinaryOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Solve.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/SolverBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/SolveTriangular.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/StableNorm.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/StlIterators.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Stride.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Swap.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Transpose.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Transpositions.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/TriangularMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/VectorBlock.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/VectorwiseOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/Core/Visitor.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/ComplexEigenSolver.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/ComplexSchur.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/ComplexSchur_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/EigenSolver.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/GeneralizedEigenSolver.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/GeneralizedSelfAdjointEigenSolver.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/HessenbergDecomposition.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/MatrixBaseEigenvalues.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/RealQZ.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/RealSchur.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/RealSchur_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/SelfAdjointEigenSolver.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/SelfAdjointEigenSolver_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/Eigenvalues/Tridiagonalization.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/arch/Geometry_SIMD.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/AlignedBox.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/AngleAxis.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/EulerAngles.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Homogeneous.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Hyperplane.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/OrthoMethods.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/ParametrizedLine.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Quaternion.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Rotation2D.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/RotationBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Scaling.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Transform.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Translation.h \
    ../../../usr/local/include/eigen3/Eigen/src/Geometry/Umeyama.h \
    ../../../usr/local/include/eigen3/Eigen/src/Householder/BlockHouseholder.h \
    ../../../usr/local/include/eigen3/Eigen/src/Householder/Householder.h \
    ../../../usr/local/include/eigen3/Eigen/src/Householder/HouseholderSequence.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/BasicPreconditioners.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/BiCGSTAB.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/ConjugateGradient.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/IncompleteCholesky.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/IncompleteLUT.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/IterativeSolverBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/LeastSquareConjugateGradient.h \
    ../../../usr/local/include/eigen3/Eigen/src/IterativeLinearSolvers/SolveWithGuess.h \
    ../../../usr/local/include/eigen3/Eigen/src/Jacobi/Jacobi.h \
    ../../../usr/local/include/eigen3/Eigen/src/KLUSupport/KLUSupport.h \
    ../../../usr/local/include/eigen3/Eigen/src/LU/arch/InverseSize4.h \
    ../../../usr/local/include/eigen3/Eigen/src/LU/Determinant.h \
    ../../../usr/local/include/eigen3/Eigen/src/LU/FullPivLU.h \
    ../../../usr/local/include/eigen3/Eigen/src/LU/InverseImpl.h \
    ../../../usr/local/include/eigen3/Eigen/src/LU/PartialPivLU.h \
    ../../../usr/local/include/eigen3/Eigen/src/LU/PartialPivLU_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/MetisSupport/MetisSupport.h \
    ../../../usr/local/include/eigen3/Eigen/src/misc/blas.h \
    ../../../usr/local/include/eigen3/Eigen/src/misc/Image.h \
    ../../../usr/local/include/eigen3/Eigen/src/misc/Kernel.h \
    ../../../usr/local/include/eigen3/Eigen/src/misc/lapack.h \
    ../../../usr/local/include/eigen3/Eigen/src/misc/lapacke.h \
    ../../../usr/local/include/eigen3/Eigen/src/misc/lapacke_mangling.h \
    ../../../usr/local/include/eigen3/Eigen/src/misc/RealSvd2x2.h \
    ../../../usr/local/include/eigen3/Eigen/src/OrderingMethods/Amd.h \
    ../../../usr/local/include/eigen3/Eigen/src/OrderingMethods/Eigen_Colamd.h \
    ../../../usr/local/include/eigen3/Eigen/src/OrderingMethods/Ordering.h \
    ../../../usr/local/include/eigen3/Eigen/src/PardisoSupport/PardisoSupport.h \
    ../../../usr/local/include/eigen3/Eigen/src/PaStiXSupport/PaStiXSupport.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/ArrayCwiseBinaryOps.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/ArrayCwiseUnaryOps.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/BlockMethods.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/CommonCwiseBinaryOps.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/CommonCwiseUnaryOps.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/IndexedViewMethods.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/MatrixCwiseBinaryOps.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/MatrixCwiseUnaryOps.h \
    ../../../usr/local/include/eigen3/Eigen/src/plugins/ReshapedMethods.h \
    ../../../usr/local/include/eigen3/Eigen/src/QR/ColPivHouseholderQR.h \
    ../../../usr/local/include/eigen3/Eigen/src/QR/ColPivHouseholderQR_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/QR/CompleteOrthogonalDecomposition.h \
    ../../../usr/local/include/eigen3/Eigen/src/QR/FullPivHouseholderQR.h \
    ../../../usr/local/include/eigen3/Eigen/src/QR/HouseholderQR.h \
    ../../../usr/local/include/eigen3/Eigen/src/QR/HouseholderQR_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCholesky/SimplicialCholesky.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCholesky/SimplicialCholesky_impl.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/AmbiVector.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/CompressedStorage.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/ConservativeSparseSparseProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/MappedSparseMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseAssign.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseBlock.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseColEtree.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseCompressedBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseCwiseBinaryOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseCwiseUnaryOp.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseDenseProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseDiagonalProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseDot.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseFuzzy.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseMap.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseMatrixBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparsePermutation.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseProduct.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseRedux.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseRef.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseSelfAdjointView.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseSolverBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseSparseProductWithPruning.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseTranspose.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseTriangularView.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseUtil.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseVector.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/SparseView.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseCore/TriangularSolver.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_column_bmod.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_column_dfs.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_copy_to_ucol.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_gemm_kernel.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_heap_relax_snode.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_kernel_bmod.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_Memory.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_panel_bmod.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_panel_dfs.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_pivotL.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_pruneL.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_relax_snode.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_Structs.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_SupernodalMatrix.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLU_Utils.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseLU/SparseLUImpl.h \
    ../../../usr/local/include/eigen3/Eigen/src/SparseQR/SparseQR.h \
    ../../../usr/local/include/eigen3/Eigen/src/SPQRSupport/SuiteSparseQRSupport.h \
    ../../../usr/local/include/eigen3/Eigen/src/StlSupport/details.h \
    ../../../usr/local/include/eigen3/Eigen/src/StlSupport/StdDeque.h \
    ../../../usr/local/include/eigen3/Eigen/src/StlSupport/StdList.h \
    ../../../usr/local/include/eigen3/Eigen/src/StlSupport/StdVector.h \
    ../../../usr/local/include/eigen3/Eigen/src/SuperLUSupport/SuperLUSupport.h \
    ../../../usr/local/include/eigen3/Eigen/src/SVD/BDCSVD.h \
    ../../../usr/local/include/eigen3/Eigen/src/SVD/JacobiSVD.h \
    ../../../usr/local/include/eigen3/Eigen/src/SVD/JacobiSVD_LAPACKE.h \
    ../../../usr/local/include/eigen3/Eigen/src/SVD/SVDBase.h \
    ../../../usr/local/include/eigen3/Eigen/src/SVD/UpperBidiagonalization.h \
    ../../../usr/local/include/eigen3/Eigen/src/UmfPackSupport/UmfPackSupport.h \
    ../../../usr/local/include/eigen3/Eigen/Cholesky \
    ../../../usr/local/include/eigen3/Eigen/CholmodSupport \
    ../../../usr/local/include/eigen3/Eigen/Core \
    ../../../usr/local/include/eigen3/Eigen/Dense \
    ../../../usr/local/include/eigen3/Eigen/Eigen \
    ../../../usr/local/include/eigen3/Eigen/Eigenvalues \
    ../../../usr/local/include/eigen3/Eigen/Geometry \
    ../../../usr/local/include/eigen3/Eigen/Householder \
    ../../../usr/local/include/eigen3/Eigen/IterativeLinearSolvers \
    ../../../usr/local/include/eigen3/Eigen/Jacobi \
    ../../../usr/local/include/eigen3/Eigen/KLUSupport \
    ../../../usr/local/include/eigen3/Eigen/LU \
    ../../../usr/local/include/eigen3/Eigen/MetisSupport \
    ../../../usr/local/include/eigen3/Eigen/OrderingMethods \
    ../../../usr/local/include/eigen3/Eigen/PardisoSupport \
    ../../../usr/local/include/eigen3/Eigen/PaStiXSupport \
    ../../../usr/local/include/eigen3/Eigen/QR \
    ../../../usr/local/include/eigen3/Eigen/QtAlignedMalloc \
    ../../../usr/local/include/eigen3/Eigen/Sparse \
    ../../../usr/local/include/eigen3/Eigen/SparseCholesky \
    ../../../usr/local/include/eigen3/Eigen/SparseCore \
    ../../../usr/local/include/eigen3/Eigen/SparseLU \
    ../../../usr/local/include/eigen3/Eigen/SparseQR \
    ../../../usr/local/include/eigen3/Eigen/SPQRSupport \
    ../../../usr/local/include/eigen3/Eigen/StdDeque \
    ../../../usr/local/include/eigen3/Eigen/StdList \
    ../../../usr/local/include/eigen3/Eigen/StdVector \
    ../../../usr/local/include/eigen3/Eigen/SuperLUSupport \
    ../../../usr/local/include/eigen3/Eigen/SVD \
    ../../../usr/local/include/eigen3/Eigen/UmfPackSupport \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/Tensor.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorArgMax.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorAssign.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorBase.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorBlock.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorBroadcasting.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorChipping.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorConcatenation.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorContraction.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorContractionBlocking.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorContractionCuda.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorContractionGpu.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorContractionMapper.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorContractionSycl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorContractionThreadPool.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorConversion.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorConvolution.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorConvolutionSycl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorCostModel.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorCustomOp.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDevice.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDeviceCuda.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDeviceDefault.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDeviceGpu.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDeviceSycl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDeviceThreadPool.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDimensionList.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorDimensions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorEvalTo.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorEvaluator.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorExecutor.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorExpr.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorFFT.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorFixedSize.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorForcedEval.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorForwardDeclarations.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorFunctors.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorGenerator.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorGlobalFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorGpuHipCudaDefines.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorGpuHipCudaUndefines.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorImagePatch.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorIndexList.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorInflation.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorInitializer.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorIntDiv.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorIO.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorLayoutSwap.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorMacros.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorMap.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorMeta.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorMorphing.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorPadding.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorPatch.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorRandom.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorReduction.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorReductionCuda.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorReductionGpu.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorReductionSycl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorRef.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorReverse.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorScan.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorScanSycl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorShuffling.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorStorage.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorStriding.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorTrace.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorTraits.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorUInt128.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/Tensor/TensorVolumePatch.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/TensorSymmetry/util/TemplateGroupTheory.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/TensorSymmetry/DynamicSymmetry.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/TensorSymmetry/StaticSymmetry.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/TensorSymmetry/Symmetry.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/Barrier.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/EventCount.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/NonBlockingThreadPool.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/RunQueue.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/ThreadCancel.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/ThreadEnvironment.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/ThreadLocal.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/ThreadPoolInterface.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/ThreadPool/ThreadYield.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/util/CXX11Meta.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/util/CXX11Workarounds.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/util/EmulateArray.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/src/util/MaxSizeVector.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/Tensor \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/TensorSymmetry \
    ../../../usr/local/include/eigen3/unsupported/Eigen/CXX11/ThreadPool \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/AutoDiff/AutoDiffJacobian.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/AutoDiff/AutoDiffScalar.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/AutoDiff/AutoDiffVector.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/BVH/BVAlgorithms.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/BVH/KdBVH.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Eigenvalues/ArpackSelfAdjointEigenSolver.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/EulerAngles/EulerAngles.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/EulerAngles/EulerSystem.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/FFT/ei_fftw_impl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/FFT/ei_kissfft_impl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/ConstrainedConjGrad.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/DGMRES.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/GMRES.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/IDRS.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/IncompleteLU.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/IterationController.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/MINRES.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/IterativeSolvers/Scaling.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/LevenbergMarquardt/LevenbergMarquardt.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/LevenbergMarquardt/LMcovar.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/LevenbergMarquardt/LMonestep.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/LevenbergMarquardt/LMpar.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/LevenbergMarquardt/LMqrsolv.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/MatrixFunctions/MatrixExponential.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/MatrixFunctions/MatrixFunction.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/MatrixFunctions/MatrixLogarithm.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/MatrixFunctions/MatrixPower.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/MatrixFunctions/MatrixSquareRoot.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/MatrixFunctions/StemFunction.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/MoreVectorization/MathFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/chkder.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/covar.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/dogleg.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/fdjac1.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/HybridNonLinearSolver.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/LevenbergMarquardt.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/lmpar.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/qrsolv.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/r1mpyq.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/r1updt.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NonLinearOptimization/rwupdt.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/NumericalDiff/NumericalDiff.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Polynomials/Companion.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Polynomials/PolynomialSolver.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Polynomials/PolynomialUtils.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Skyline/SkylineInplaceLU.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Skyline/SkylineMatrix.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Skyline/SkylineMatrixBase.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Skyline/SkylineProduct.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Skyline/SkylineStorage.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Skyline/SkylineUtil.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SparseExtra/BlockOfDynamicSparseMatrix.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SparseExtra/BlockSparseMatrix.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SparseExtra/DynamicSparseMatrix.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SparseExtra/MarketIO.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SparseExtra/MatrixMarketIterator.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SparseExtra/RandomSetter.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/arch/AVX/BesselFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/arch/AVX/SpecialFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/arch/AVX512/BesselFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/arch/AVX512/SpecialFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/arch/GPU/SpecialFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/arch/NEON/BesselFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/arch/NEON/SpecialFunctions.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/BesselFunctionsArrayAPI.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/BesselFunctionsBFloat16.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/BesselFunctionsFunctors.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/BesselFunctionsHalf.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/BesselFunctionsImpl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/BesselFunctionsPacketMath.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/HipVectorCompatibility.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/SpecialFunctionsArrayAPI.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/SpecialFunctionsBFloat16.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/SpecialFunctionsFunctors.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/SpecialFunctionsHalf.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/SpecialFunctionsImpl.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/SpecialFunctions/SpecialFunctionsPacketMath.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Splines/Spline.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Splines/SplineFitting.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/src/Splines/SplineFwd.h \
    ../../../usr/local/include/eigen3/unsupported/Eigen/AdolcForward \
    ../../../usr/local/include/eigen3/unsupported/Eigen/AlignedVector3 \
    ../../../usr/local/include/eigen3/unsupported/Eigen/ArpackSupport \
    ../../../usr/local/include/eigen3/unsupported/Eigen/AutoDiff \
    ../../../usr/local/include/eigen3/unsupported/Eigen/BVH \
    ../../../usr/local/include/eigen3/unsupported/Eigen/EulerAngles \
    ../../../usr/local/include/eigen3/unsupported/Eigen/FFT \
    ../../../usr/local/include/eigen3/unsupported/Eigen/IterativeSolvers \
    ../../../usr/local/include/eigen3/unsupported/Eigen/KroneckerProduct \
    ../../../usr/local/include/eigen3/unsupported/Eigen/LevenbergMarquardt \
    ../../../usr/local/include/eigen3/unsupported/Eigen/MatrixFunctions \
    ../../../usr/local/include/eigen3/unsupported/Eigen/MoreVectorization \
    ../../../usr/local/include/eigen3/unsupported/Eigen/MPRealSupport \
    ../../../usr/local/include/eigen3/unsupported/Eigen/NonLinearOptimization \
    ../../../usr/local/include/eigen3/unsupported/Eigen/NumericalDiff \
    ../../../usr/local/include/eigen3/unsupported/Eigen/OpenGLSupport \
    ../../../usr/local/include/eigen3/unsupported/Eigen/Polynomials \
    ../../../usr/local/include/eigen3/unsupported/Eigen/Skyline \
    ../../../usr/local/include/eigen3/unsupported/Eigen/SparseExtra \
    ../../../usr/local/include/eigen3/unsupported/Eigen/SpecialFunctions \
    ../../../usr/local/include/eigen3/unsupported/Eigen/Splines

FORMS += \
        mainwindow.ui


unix:!macx: LIBS += -L$$PWD/../Загрузки/CGAL-5.1.2/lib/ -lCGAL_Qt5_moc_and_resources

INCLUDEPATH += $$PWD/../Загрузки/CGAL-5.1.2/include
DEPENDPATH += $$PWD/../Загрузки/CGAL-5.1.2/include

unix:!macx: PRE_TARGETDEPS += $$PWD/../Загрузки/CGAL-5.1.2/lib/libCGAL_Qt5_moc_and_resources.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/release/ -lgmp
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/debug/ -lgmp
else:unix: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lgmp

INCLUDEPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/libgmp.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/libgmp.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/gmp.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/gmp.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/libgmp.a



unix:!macx: LIBS += -L$$PWD/../Загрузки/libQGLViewer-2.7.2/QGLViewer/ -lQGLViewer-qt5

INCLUDEPATH += $$PWD/../Загрузки/libQGLViewer-2.7.2/QGLViewer
DEPENDPATH += $$PWD/../Загрузки/libQGLViewer-2.7.2/QGLViewer



DISTFILES += \
    eq.py

RESOURCES += \
    re.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/release/ -lmpfr
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/debug/ -lmpfr
else:unix: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lmpfr

INCLUDEPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/libmpfr.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/libmpfr.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/mpfr.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/mpfr.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/libmpfr.a
