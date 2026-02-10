
fenwick_cpp.bin:     file format elf64-x86-64


Disassembly of section .init:

000000000040033c <_init>:
  40033c:	f3 0f 1e fa          	endbr64
  400340:	48 83 ec 08          	sub    $0x8,%rsp
  400344:	48 8b 05 95 4c 00 00 	mov    0x4c95(%rip),%rax        # 404fe0 <__gmon_start__@Base>
  40034b:	48 85 c0             	test   %rax,%rax
  40034e:	74 02                	je     400352 <_init+0x16>
  400350:	ff d0                	call   *%rax
  400352:	48 83 c4 08          	add    $0x8,%rsp
  400356:	c3                   	ret

Disassembly of section .plt:

0000000000400360 <printf@plt-0x10>:
  400360:	ff 35 8a 4c 00 00    	push   0x4c8a(%rip)        # 404ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400366:	ff 25 8c 4c 00 00    	jmp    *0x4c8c(%rip)        # 404ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40036c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400370 <printf@plt>:
  400370:	ff 25 8a 4c 00 00    	jmp    *0x4c8a(%rip)        # 405000 <printf@GLIBC_2.2.5>
  400376:	68 00 00 00 00       	push   $0x0
  40037b:	e9 e0 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400380 <_ZSt21__glibcxx_assert_failPKciS0_S0_@plt>:
  400380:	ff 25 82 4c 00 00    	jmp    *0x4c82(%rip)        # 405008 <_ZSt21__glibcxx_assert_failPKciS0_S0_@GLIBCXX_3.4.30>
  400386:	68 01 00 00 00       	push   $0x1
  40038b:	e9 d0 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400390 <_ZSt17__throw_bad_allocv@plt>:
  400390:	ff 25 7a 4c 00 00    	jmp    *0x4c7a(%rip)        # 405010 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
  400396:	68 02 00 00 00       	push   $0x2
  40039b:	e9 c0 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003a0 <_ZSt20__throw_length_errorPKc@plt>:
  4003a0:	ff 25 72 4c 00 00    	jmp    *0x4c72(%rip)        # 405018 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  4003a6:	68 03 00 00 00       	push   $0x3
  4003ab:	e9 b0 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003b0 <__assert_fail@plt>:
  4003b0:	ff 25 6a 4c 00 00    	jmp    *0x4c6a(%rip)        # 405020 <__assert_fail@GLIBC_2.2.5>
  4003b6:	68 04 00 00 00       	push   $0x4
  4003bb:	e9 a0 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003c0 <_ZSt28__throw_bad_array_new_lengthv@plt>:
  4003c0:	ff 25 62 4c 00 00    	jmp    *0x4c62(%rip)        # 405028 <_ZSt28__throw_bad_array_new_lengthv@GLIBCXX_3.4.29>
  4003c6:	68 05 00 00 00       	push   $0x5
  4003cb:	e9 90 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003d0 <memcpy@plt>:
  4003d0:	ff 25 5a 4c 00 00    	jmp    *0x4c5a(%rip)        # 405030 <memcpy@GLIBC_2.14>
  4003d6:	68 06 00 00 00       	push   $0x6
  4003db:	e9 80 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003e0 <_Znwm@plt>:
  4003e0:	ff 25 52 4c 00 00    	jmp    *0x4c52(%rip)        # 405038 <_Znwm@GLIBCXX_3.4>
  4003e6:	68 07 00 00 00       	push   $0x7
  4003eb:	e9 70 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003f0 <_ZdlPvm@plt>:
  4003f0:	ff 25 4a 4c 00 00    	jmp    *0x4c4a(%rip)        # 405040 <_ZdlPvm@CXXABI_1.3.9>
  4003f6:	68 08 00 00 00       	push   $0x8
  4003fb:	e9 60 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400400 <__isoc23_scanf@plt>:
  400400:	ff 25 42 4c 00 00    	jmp    *0x4c42(%rip)        # 405048 <__isoc23_scanf@GLIBC_2.38>
  400406:	68 09 00 00 00       	push   $0x9
  40040b:	e9 50 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400410 <__gxx_personality_v0@plt>:
  400410:	ff 25 3a 4c 00 00    	jmp    *0x4c3a(%rip)        # 405050 <__gxx_personality_v0@CXXABI_1.3>
  400416:	68 0a 00 00 00       	push   $0xa
  40041b:	e9 40 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400420 <_Unwind_Resume@plt>:
  400420:	ff 25 32 4c 00 00    	jmp    *0x4c32(%rip)        # 405058 <_Unwind_Resume@GCC_3.0>
  400426:	68 0b 00 00 00       	push   $0xb
  40042b:	e9 30 ff ff ff       	jmp    400360 <_init+0x24>

Disassembly of section .text:

0000000000400430 <_start>:
  400430:	f3 0f 1e fa          	endbr64
  400434:	31 ed                	xor    %ebp,%ebp
  400436:	49 89 d1             	mov    %rdx,%r9
  400439:	5e                   	pop    %rsi
  40043a:	48 89 e2             	mov    %rsp,%rdx
  40043d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400441:	50                   	push   %rax
  400442:	54                   	push   %rsp
  400443:	45 31 c0             	xor    %r8d,%r8d
  400446:	31 c9                	xor    %ecx,%ecx
  400448:	48 c7 c7 16 05 40 00 	mov    $0x400516,%rdi
  40044f:	ff 15 83 4b 00 00    	call   *0x4b83(%rip)        # 404fd8 <__libc_start_main@GLIBC_2.34>
  400455:	f4                   	hlt
  400456:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40045d:	00 00 00 

0000000000400460 <_dl_relocate_static_pie>:
  400460:	f3 0f 1e fa          	endbr64
  400464:	c3                   	ret
  400465:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40046c:	00 00 00 
  40046f:	90                   	nop

0000000000400470 <deregister_tm_clones>:
  400470:	b8 68 50 40 00       	mov    $0x405068,%eax
  400475:	48 3d 68 50 40 00    	cmp    $0x405068,%rax
  40047b:	74 13                	je     400490 <deregister_tm_clones+0x20>
  40047d:	b8 00 00 00 00       	mov    $0x0,%eax
  400482:	48 85 c0             	test   %rax,%rax
  400485:	74 09                	je     400490 <deregister_tm_clones+0x20>
  400487:	bf 68 50 40 00       	mov    $0x405068,%edi
  40048c:	ff e0                	jmp    *%rax
  40048e:	66 90                	xchg   %ax,%ax
  400490:	c3                   	ret
  400491:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400498:	00 00 00 00 
  40049c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004a0 <register_tm_clones>:
  4004a0:	be 68 50 40 00       	mov    $0x405068,%esi
  4004a5:	48 81 ee 68 50 40 00 	sub    $0x405068,%rsi
  4004ac:	48 89 f0             	mov    %rsi,%rax
  4004af:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4004b3:	48 c1 f8 03          	sar    $0x3,%rax
  4004b7:	48 01 c6             	add    %rax,%rsi
  4004ba:	48 d1 fe             	sar    $1,%rsi
  4004bd:	74 11                	je     4004d0 <register_tm_clones+0x30>
  4004bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4004c4:	48 85 c0             	test   %rax,%rax
  4004c7:	74 07                	je     4004d0 <register_tm_clones+0x30>
  4004c9:	bf 68 50 40 00       	mov    $0x405068,%edi
  4004ce:	ff e0                	jmp    *%rax
  4004d0:	c3                   	ret
  4004d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4004d8:	00 00 00 00 
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <__do_global_dtors_aux>:
  4004e0:	f3 0f 1e fa          	endbr64
  4004e4:	80 3d 79 4b 00 00 00 	cmpb   $0x0,0x4b79(%rip)        # 405064 <completed.0>
  4004eb:	75 13                	jne    400500 <__do_global_dtors_aux+0x20>
  4004ed:	55                   	push   %rbp
  4004ee:	48 89 e5             	mov    %rsp,%rbp
  4004f1:	e8 7a ff ff ff       	call   400470 <deregister_tm_clones>
  4004f6:	c6 05 67 4b 00 00 01 	movb   $0x1,0x4b67(%rip)        # 405064 <completed.0>
  4004fd:	5d                   	pop    %rbp
  4004fe:	c3                   	ret
  4004ff:	90                   	nop
  400500:	c3                   	ret
  400501:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400508:	00 00 00 00 
  40050c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400510 <frame_dummy>:
  400510:	f3 0f 1e fa          	endbr64
  400514:	eb 8a                	jmp    4004a0 <register_tm_clones>

0000000000400516 <main>:
        return query(r) - query(l - 1);
    }
};

int32_t main()
{
  400516:	55                   	push   %rbp
  400517:	48 89 e5             	mov    %rsp,%rbp
  40051a:	53                   	push   %rbx
  40051b:	48 83 ec 58          	sub    $0x58,%rsp
    int64_t n, q;
    scanf("%ld", &n);
  40051f:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  400523:	48 89 c6             	mov    %rax,%rsi
  400526:	bf 00 26 40 00       	mov    $0x402600,%edi
  40052b:	b8 00 00 00 00       	mov    $0x0,%eax
  400530:	e8 cb fe ff ff       	call   400400 <__isoc23_scanf@plt>
    scanf("%ld", &q);
  400535:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400539:	48 89 c6             	mov    %rax,%rsi
  40053c:	bf 00 26 40 00       	mov    $0x402600,%edi
  400541:	b8 00 00 00 00       	mov    $0x0,%eax
  400546:	e8 b5 fe ff ff       	call   400400 <__isoc23_scanf@plt>

    fenwick_tree_chan<int64_t> fen(n + 10);
  40054b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40054f:	83 c0 0a             	add    $0xa,%eax
  400552:	89 c2                	mov    %eax,%edx
  400554:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400558:	89 d6                	mov    %edx,%esi
  40055a:	48 89 c7             	mov    %rax,%rdi
  40055d:	e8 82 01 00 00       	call   4006e4 <_ZN17fenwick_tree_chanIlEC1Ei>
    
    while(q --)
  400562:	e9 88 00 00 00       	jmp    4005ef <main+0xd9>
    {
        int64_t t, a, b;
        scanf("%ld %ld %ld", &t, &a, &b);
  400567:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
  40056b:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
  40056f:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  400573:	48 89 c6             	mov    %rax,%rsi
  400576:	bf 04 26 40 00       	mov    $0x402604,%edi
  40057b:	b8 00 00 00 00       	mov    $0x0,%eax
  400580:	e8 7b fe ff ff       	call   400400 <__isoc23_scanf@plt>
        if(t == 1)
  400585:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400589:	48 83 f8 01          	cmp    $0x1,%rax
  40058d:	75 1a                	jne    4005a9 <main+0x93>
            fen.modify(a, b);
  40058f:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  400593:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400597:	89 c1                	mov    %eax,%ecx
  400599:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40059d:	89 ce                	mov    %ecx,%esi
  40059f:	48 89 c7             	mov    %rax,%rdi
  4005a2:	e8 25 02 00 00       	call   4007cc <_ZN17fenwick_tree_chanIlE6modifyEil>
  4005a7:	eb 46                	jmp    4005ef <main+0xd9>
        else
            printf("%ld\n", fen.query(b) - fen.query(a - 1));
  4005a9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4005ad:	89 c2                	mov    %eax,%edx
  4005af:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4005b3:	89 d6                	mov    %edx,%esi
  4005b5:	48 89 c7             	mov    %rax,%rdi
  4005b8:	e8 8b 02 00 00       	call   400848 <_ZN17fenwick_tree_chanIlE5queryEi>
  4005bd:	48 89 c3             	mov    %rax,%rbx
  4005c0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4005c4:	83 e8 01             	sub    $0x1,%eax
  4005c7:	89 c2                	mov    %eax,%edx
  4005c9:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4005cd:	89 d6                	mov    %edx,%esi
  4005cf:	48 89 c7             	mov    %rax,%rdi
  4005d2:	e8 71 02 00 00       	call   400848 <_ZN17fenwick_tree_chanIlE5queryEi>
  4005d7:	48 29 c3             	sub    %rax,%rbx
  4005da:	48 89 da             	mov    %rbx,%rdx
  4005dd:	48 89 d6             	mov    %rdx,%rsi
  4005e0:	bf 10 26 40 00       	mov    $0x402610,%edi
  4005e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4005ea:	e8 81 fd ff ff       	call   400370 <printf@plt>
    while(q --)
  4005ef:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4005f3:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  4005f7:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  4005fb:	48 85 c0             	test   %rax,%rax
  4005fe:	0f 95 c0             	setne  %al
  400601:	84 c0                	test   %al,%al
  400603:	0f 85 5e ff ff ff    	jne    400567 <main+0x51>
    }
  400609:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40060d:	48 89 c7             	mov    %rax,%rdi
  400610:	e8 57 00 00 00       	call   40066c <_ZN17fenwick_tree_chanIlED1Ev>
  400615:	b8 00 00 00 00       	mov    $0x0,%eax
  40061a:	eb 1a                	jmp    400636 <main+0x120>
  40061c:	48 89 c3             	mov    %rax,%rbx
  40061f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400623:	48 89 c7             	mov    %rax,%rdi
  400626:	e8 41 00 00 00       	call   40066c <_ZN17fenwick_tree_chanIlED1Ev>
  40062b:	48 89 d8             	mov    %rbx,%rax
  40062e:	48 89 c7             	mov    %rax,%rdi
  400631:	e8 ea fd ff ff       	call   400420 <_Unwind_Resume@plt>
  400636:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40063a:	c9                   	leave
  40063b:	c3                   	ret

000000000040063c <_ZnwmPv>:

// Default placement versions of operator new.
_GLIBCXX_NODISCARD _GLIBCXX_PLACEMENT_CONSTEXPR
void* operator new(std::size_t, void* __p)
  _GLIBCXX_TXN_SAFE _GLIBCXX_USE_NOEXCEPT
{ return __p; }
  40063c:	55                   	push   %rbp
  40063d:	48 89 e5             	mov    %rsp,%rbp
  400640:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400644:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400648:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40064c:	5d                   	pop    %rbp
  40064d:	c3                   	ret

000000000040064e <_ZdlPvS_>:
#undef _GLIBCXX_PLACEMENT_CONSTEXPR

// Default placement versions of operator delete.
inline void operator delete  (void*, void*)
  _GLIBCXX_TXN_SAFE _GLIBCXX_USE_NOEXCEPT
{ }
  40064e:	55                   	push   %rbp
  40064f:	48 89 e5             	mov    %rsp,%rbp
  400652:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400656:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40065a:	90                   	nop
  40065b:	5d                   	pop    %rbp
  40065c:	c3                   	ret

000000000040065d <_ZSt17__size_to_integerm>:
  inline _GLIBCXX_CONSTEXPR unsigned
  __size_to_integer(unsigned __n) { return __n; }
  inline _GLIBCXX_CONSTEXPR long
  __size_to_integer(long __n) { return __n; }
  inline _GLIBCXX_CONSTEXPR unsigned long
  __size_to_integer(unsigned long __n) { return __n; }
  40065d:	55                   	push   %rbp
  40065e:	48 89 e5             	mov    %rsp,%rbp
  400661:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400665:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400669:	5d                   	pop    %rbp
  40066a:	c3                   	ret
  40066b:	90                   	nop

000000000040066c <_ZN17fenwick_tree_chanIlED1Ev>:
class fenwick_tree_chan
  40066c:	55                   	push   %rbp
  40066d:	48 89 e5             	mov    %rsp,%rbp
  400670:	48 83 ec 10          	sub    $0x10,%rsp
  400674:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400678:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40067c:	48 89 c7             	mov    %rax,%rdi
  40067f:	e8 f2 00 00 00       	call   400776 <_ZNSt6vectorIlSaIlEED1Ev>
  400684:	90                   	nop
  400685:	c9                   	leave
  400686:	c3                   	ret
  400687:	90                   	nop

0000000000400688 <_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev>:
	  _M_copy_data(__x);
	  __x._M_copy_data(__tmp);
	}
      };

      struct _Vector_impl
  400688:	55                   	push   %rbp
  400689:	48 89 e5             	mov    %rsp,%rbp
  40068c:	48 83 ec 20          	sub    $0x20,%rsp
  400690:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400694:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400698:	48 89 45 f8          	mov    %rax,-0x8(%rbp)

      __attribute__((__always_inline__))
#if __cpp_constexpr_dynamic_alloc
      constexpr
#endif
      ~allocator() _GLIBCXX_NOTHROW { }
  40069c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006a0:	48 89 c7             	mov    %rax,%rdi
  4006a3:	e8 e2 03 00 00       	call   400a8a <_ZNSt15__new_allocatorIlED1Ev>
  4006a8:	90                   	nop
  4006a9:	90                   	nop
  4006aa:	c9                   	leave
  4006ab:	c3                   	ret

00000000004006ac <_ZNSt12_Vector_baseIlSaIlEEC1Ev>:
      allocator_type
      get_allocator() const _GLIBCXX_NOEXCEPT
      { return allocator_type(_M_get_Tp_allocator()); }

#if __cplusplus >= 201103L
      _Vector_base() = default;
  4006ac:	55                   	push   %rbp
  4006ad:	48 89 e5             	mov    %rsp,%rbp
  4006b0:	48 83 ec 10          	sub    $0x10,%rsp
  4006b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4006b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006bc:	48 89 c7             	mov    %rax,%rdi
  4006bf:	e8 00 02 00 00       	call   4008c4 <_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1Ev>
  4006c4:	90                   	nop
  4006c5:	c9                   	leave
  4006c6:	c3                   	ret
  4006c7:	90                   	nop

00000000004006c8 <_ZNSt6vectorIlSaIlEEC1Ev>:

      /**
       *  @brief  Creates a %vector with no elements.
       */
#if __cplusplus >= 201103L
      vector() = default;
  4006c8:	55                   	push   %rbp
  4006c9:	48 89 e5             	mov    %rsp,%rbp
  4006cc:	48 83 ec 10          	sub    $0x10,%rsp
  4006d0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4006d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006d8:	48 89 c7             	mov    %rax,%rdi
  4006db:	e8 cc ff ff ff       	call   4006ac <_ZNSt12_Vector_baseIlSaIlEEC1Ev>
  4006e0:	90                   	nop
  4006e1:	c9                   	leave
  4006e2:	c3                   	ret
  4006e3:	90                   	nop

00000000004006e4 <_ZN17fenwick_tree_chanIlEC1Ei>:
    fenwick_tree_chan(int n) : n(n)
  4006e4:	55                   	push   %rbp
  4006e5:	48 89 e5             	mov    %rsp,%rbp
  4006e8:	53                   	push   %rbx
  4006e9:	48 83 ec 18          	sub    $0x18,%rsp
  4006ed:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4006f1:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  4006f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4006f8:	48 89 c7             	mov    %rax,%rdi
  4006fb:	e8 c8 ff ff ff       	call   4006c8 <_ZNSt6vectorIlSaIlEEC1Ev>
  400700:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400704:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  400707:	89 50 18             	mov    %edx,0x18(%rax)
        fenw.resize(n);
  40070a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40070e:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  400711:	48 63 d2             	movslq %edx,%rdx
  400714:	48 89 d6             	mov    %rdx,%rsi
  400717:	48 89 c7             	mov    %rax,%rdi
  40071a:	e8 21 02 00 00       	call   400940 <_ZNSt6vectorIlSaIlEE6resizeEm>
        pw = (n == 0 ? 0 : 1ULL << (63 - __builtin_clzll(unsigned(n))));
  40071f:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  400723:	74 22                	je     400747 <_ZN17fenwick_tree_chanIlEC1Ei+0x63>
  400725:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400728:	89 c0                	mov    %eax,%eax
  40072a:	48 0f bd c0          	bsr    %rax,%rax
  40072e:	48 83 f0 3f          	xor    $0x3f,%rax
  400732:	89 c2                	mov    %eax,%edx
  400734:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
  40073b:	00 00 80 
  40073e:	89 d1                	mov    %edx,%ecx
  400740:	48 d3 e8             	shr    %cl,%rax
  400743:	89 c2                	mov    %eax,%edx
  400745:	eb 05                	jmp    40074c <_ZN17fenwick_tree_chanIlEC1Ei+0x68>
  400747:	ba 00 00 00 00       	mov    $0x0,%edx
  40074c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400750:	89 50 1c             	mov    %edx,0x1c(%rax)
    }
  400753:	eb 1a                	jmp    40076f <_ZN17fenwick_tree_chanIlEC1Ei+0x8b>
  400755:	48 89 c3             	mov    %rax,%rbx
  400758:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40075c:	48 89 c7             	mov    %rax,%rdi
  40075f:	e8 12 00 00 00       	call   400776 <_ZNSt6vectorIlSaIlEED1Ev>
  400764:	48 89 d8             	mov    %rbx,%rax
  400767:	48 89 c7             	mov    %rax,%rdi
  40076a:	e8 b1 fc ff ff       	call   400420 <_Unwind_Resume@plt>
  40076f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400773:	c9                   	leave
  400774:	c3                   	ret
  400775:	90                   	nop

0000000000400776 <_ZNSt6vectorIlSaIlEED1Ev>:
       *  elements themselves are pointers, the pointed-to memory is
       *  not touched in any way.  Managing the pointer is the user's
       *  responsibility.
       */
      _GLIBCXX20_CONSTEXPR
      ~vector() _GLIBCXX_NOEXCEPT
  400776:	55                   	push   %rbp
  400777:	48 89 e5             	mov    %rsp,%rbp
  40077a:	48 83 ec 30          	sub    $0x30,%rsp
  40077e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
      {
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
		      _M_get_Tp_allocator());
  400782:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400786:	48 89 c7             	mov    %rax,%rdi
  400789:	e8 38 02 00 00       	call   4009c6 <_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  40078e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  400792:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400796:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40079a:	48 8b 09             	mov    (%rcx),%rcx
  40079d:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  4007a1:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  4007a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    __attribute__((__always_inline__)) _GLIBCXX20_CONSTEXPR
    inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
	     allocator<_Tp>&)
    {
      std::_Destroy(__first, __last);
  4007a9:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4007ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007b1:	48 89 d6             	mov    %rdx,%rsi
  4007b4:	48 89 c7             	mov    %rax,%rdi
  4007b7:	e8 dc 05 00 00       	call   400d98 <_ZSt8_DestroyIPlEvT_S1_>
    }
  4007bc:	90                   	nop
	_GLIBCXX_ASAN_ANNOTATE_BEFORE_DEALLOC;
      }
  4007bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4007c1:	48 89 c7             	mov    %rax,%rdi
  4007c4:	e8 29 01 00 00       	call   4008f2 <_ZNSt12_Vector_baseIlSaIlEED1Ev>
  4007c9:	90                   	nop
  4007ca:	c9                   	leave
  4007cb:	c3                   	ret

00000000004007cc <_ZN17fenwick_tree_chanIlE6modifyEil>:
    void modify(int x, T v)
  4007cc:	55                   	push   %rbp
  4007cd:	48 89 e5             	mov    %rsp,%rbp
  4007d0:	48 83 ec 20          	sub    $0x20,%rsp
  4007d4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4007d8:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4007db:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
        assert(0 <= x && x < n);
  4007df:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  4007e3:	78 0c                	js     4007f1 <_ZN17fenwick_tree_chanIlE6modifyEil+0x25>
  4007e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007e9:	8b 40 18             	mov    0x18(%rax),%eax
  4007ec:	39 45 f4             	cmp    %eax,-0xc(%rbp)
  4007ef:	7c 19                	jl     40080a <_ZN17fenwick_tree_chanIlE6modifyEil+0x3e>
  4007f1:	b9 18 26 40 00       	mov    $0x402618,%ecx
  4007f6:	ba 19 00 00 00       	mov    $0x19,%edx
  4007fb:	be 56 26 40 00       	mov    $0x402656,%esi
  400800:	bf 62 26 40 00       	mov    $0x402662,%edi
  400805:	e8 a6 fb ff ff       	call   4003b0 <__assert_fail@plt>
        while (x < n)
  40080a:	eb 2b                	jmp    400837 <_ZN17fenwick_tree_chanIlE6modifyEil+0x6b>
            fenw[x] += v;
  40080c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400810:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400813:	48 63 d2             	movslq %edx,%rdx
  400816:	48 89 d6             	mov    %rdx,%rsi
  400819:	48 89 c7             	mov    %rax,%rdi
  40081c:	e8 b3 01 00 00       	call   4009d4 <_ZNSt6vectorIlSaIlEEixEm>
  400821:	48 8b 08             	mov    (%rax),%rcx
  400824:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400828:	48 01 ca             	add    %rcx,%rdx
  40082b:	48 89 10             	mov    %rdx,(%rax)
            x |= x + 1;
  40082e:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400831:	83 c0 01             	add    $0x1,%eax
  400834:	09 45 f4             	or     %eax,-0xc(%rbp)
        while (x < n)
  400837:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40083b:	8b 40 18             	mov    0x18(%rax),%eax
  40083e:	39 45 f4             	cmp    %eax,-0xc(%rbp)
  400841:	7c c9                	jl     40080c <_ZN17fenwick_tree_chanIlE6modifyEil+0x40>
    }
  400843:	90                   	nop
  400844:	90                   	nop
  400845:	c9                   	leave
  400846:	c3                   	ret
  400847:	90                   	nop

0000000000400848 <_ZN17fenwick_tree_chanIlE5queryEi>:
    T query(int x)
  400848:	55                   	push   %rbp
  400849:	48 89 e5             	mov    %rsp,%rbp
  40084c:	48 83 ec 20          	sub    $0x20,%rsp
  400850:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400854:	89 75 e4             	mov    %esi,-0x1c(%rbp)
        ++ x;
  400857:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
        assert(0 <= x && x <= n);
  40085b:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  40085f:	78 0c                	js     40086d <_ZN17fenwick_tree_chanIlE5queryEi+0x25>
  400861:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400865:	8b 40 18             	mov    0x18(%rax),%eax
  400868:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
  40086b:	7e 19                	jle    400886 <_ZN17fenwick_tree_chanIlE5queryEi+0x3e>
  40086d:	b9 78 26 40 00       	mov    $0x402678,%ecx
  400872:	ba 25 00 00 00       	mov    $0x25,%edx
  400877:	be 56 26 40 00       	mov    $0x402656,%esi
  40087c:	bf af 26 40 00       	mov    $0x4026af,%edi
  400881:	e8 2a fb ff ff       	call   4003b0 <__assert_fail@plt>
        T v{};
  400886:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40088d:	00 
        while (x > 0)
  40088e:	eb 28                	jmp    4008b8 <_ZN17fenwick_tree_chanIlE5queryEi+0x70>
            v += fenw[x - 1];
  400890:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400894:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  400897:	83 ea 01             	sub    $0x1,%edx
  40089a:	48 63 d2             	movslq %edx,%rdx
  40089d:	48 89 d6             	mov    %rdx,%rsi
  4008a0:	48 89 c7             	mov    %rax,%rdi
  4008a3:	e8 2c 01 00 00       	call   4009d4 <_ZNSt6vectorIlSaIlEEixEm>
  4008a8:	48 8b 00             	mov    (%rax),%rax
  4008ab:	48 01 45 f8          	add    %rax,-0x8(%rbp)
            x &= x - 1;
  4008af:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4008b2:	83 e8 01             	sub    $0x1,%eax
  4008b5:	21 45 e4             	and    %eax,-0x1c(%rbp)
        while (x > 0)
  4008b8:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  4008bc:	7f d2                	jg     400890 <_ZN17fenwick_tree_chanIlE5queryEi+0x48>
        return v;
  4008be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  4008c2:	c9                   	leave
  4008c3:	c3                   	ret

00000000004008c4 <_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC1Ev>:
	_Vector_impl() _GLIBCXX_NOEXCEPT_IF(
  4008c4:	55                   	push   %rbp
  4008c5:	48 89 e5             	mov    %rsp,%rbp
  4008c8:	48 83 ec 20          	sub    $0x20,%rsp
  4008cc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008d4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008dc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      typedef std::true_type propagate_on_container_move_assignment;
#endif

      __attribute__((__always_inline__))
      _GLIBCXX20_CONSTEXPR
      __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  4008e0:	90                   	nop
      allocator() _GLIBCXX_NOTHROW { }
  4008e1:	90                   	nop
	: _Tp_alloc_type()
  4008e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008e6:	48 89 c7             	mov    %rax,%rdi
  4008e9:	e8 6e 01 00 00       	call   400a5c <_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC1Ev>
	{ }
  4008ee:	90                   	nop
  4008ef:	c9                   	leave
  4008f0:	c3                   	ret
  4008f1:	90                   	nop

00000000004008f2 <_ZNSt12_Vector_baseIlSaIlEED1Ev>:
      ~_Vector_base() _GLIBCXX_NOEXCEPT
  4008f2:	55                   	push   %rbp
  4008f3:	48 89 e5             	mov    %rsp,%rbp
  4008f6:	48 83 ec 10          	sub    $0x10,%rsp
  4008fa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_impl._M_end_of_storage - _M_impl._M_start);
  4008fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400902:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400906:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40090a:	48 8b 00             	mov    (%rax),%rax
  40090d:	48 29 c2             	sub    %rax,%rdx
  400910:	48 89 d0             	mov    %rdx,%rax
  400913:	48 c1 f8 03          	sar    $0x3,%rax
	_M_deallocate(_M_impl._M_start,
  400917:	48 89 c2             	mov    %rax,%rdx
  40091a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40091e:	48 8b 08             	mov    (%rax),%rcx
  400921:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400925:	48 89 ce             	mov    %rcx,%rsi
  400928:	48 89 c7             	mov    %rax,%rdi
  40092b:	e8 66 01 00 00       	call   400a96 <_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm>
      }
  400930:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400934:	48 89 c7             	mov    %rax,%rdi
  400937:	e8 4c fd ff ff       	call   400688 <_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD1Ev>
  40093c:	90                   	nop
  40093d:	c9                   	leave
  40093e:	c3                   	ret
  40093f:	90                   	nop

0000000000400940 <_ZNSt6vectorIlSaIlEE6resizeEm>:
       *  %vector's current size the %vector is truncated, otherwise
       *  default constructed elements are appended.
       */
      _GLIBCXX20_CONSTEXPR
      void
      resize(size_type __new_size)
  400940:	55                   	push   %rbp
  400941:	48 89 e5             	mov    %rsp,%rbp
  400944:	48 83 ec 10          	sub    $0x10,%rsp
  400948:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40094c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      {
	if (__new_size > size())
  400950:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400954:	48 89 c7             	mov    %rax,%rdi
  400957:	e8 88 01 00 00       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  40095c:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  400960:	0f 92 c0             	setb   %al
  400963:	84 c0                	test   %al,%al
  400965:	74 24                	je     40098b <_ZNSt6vectorIlSaIlEE6resizeEm+0x4b>
	  _M_default_append(__new_size - size());
  400967:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40096b:	48 89 c7             	mov    %rax,%rdi
  40096e:	e8 71 01 00 00       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  400973:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400977:	48 29 c2             	sub    %rax,%rdx
  40097a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40097e:	48 89 d6             	mov    %rdx,%rsi
  400981:	48 89 c7             	mov    %rax,%rdi
  400984:	e8 8b 01 00 00       	call   400b14 <_ZNSt6vectorIlSaIlEE17_M_default_appendEm>
	else if (__new_size < size())
	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
      }
  400989:	eb 38                	jmp    4009c3 <_ZNSt6vectorIlSaIlEE6resizeEm+0x83>
	else if (__new_size < size())
  40098b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40098f:	48 89 c7             	mov    %rax,%rdi
  400992:	e8 4d 01 00 00       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  400997:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  40099b:	0f 92 c0             	setb   %al
  40099e:	84 c0                	test   %al,%al
  4009a0:	74 21                	je     4009c3 <_ZNSt6vectorIlSaIlEE6resizeEm+0x83>
	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
  4009a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009a6:	48 8b 00             	mov    (%rax),%rax
  4009a9:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4009ad:	48 c1 e2 03          	shl    $0x3,%rdx
  4009b1:	48 01 c2             	add    %rax,%rdx
  4009b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009b8:	48 89 d6             	mov    %rdx,%rsi
  4009bb:	48 89 c7             	mov    %rax,%rdi
  4009be:	e8 63 03 00 00       	call   400d26 <_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl>
      }
  4009c3:	90                   	nop
  4009c4:	c9                   	leave
  4009c5:	c3                   	ret

00000000004009c6 <_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
  4009c6:	55                   	push   %rbp
  4009c7:	48 89 e5             	mov    %rsp,%rbp
  4009ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl; }
  4009ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009d2:	5d                   	pop    %rbp
  4009d3:	c3                   	ret

00000000004009d4 <_ZNSt6vectorIlSaIlEEixEm>:
       *  out_of_range lookups are not defined. (For checked lookups
       *  see at().)
       */
      _GLIBCXX_NODISCARD _GLIBCXX20_CONSTEXPR
      reference
      operator[](size_type __n) _GLIBCXX_NOEXCEPT
  4009d4:	55                   	push   %rbp
  4009d5:	48 89 e5             	mov    %rsp,%rbp
  4009d8:	48 83 ec 10          	sub    $0x10,%rsp
  4009dc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4009e0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      {
	__glibcxx_requires_subscript(__n);
  4009e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009e8:	48 89 c7             	mov    %rax,%rdi
  4009eb:	e8 f4 00 00 00       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  4009f0:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  4009f4:	0f 93 c0             	setae  %al
  4009f7:	0f b6 c0             	movzbl %al,%eax
  4009fa:	48 85 c0             	test   %rax,%rax
  4009fd:	0f 95 c0             	setne  %al
  400a00:	84 c0                	test   %al,%al
  400a02:	74 19                	je     400a1d <_ZNSt6vectorIlSaIlEEixEm+0x49>
  400a04:	b9 c0 26 40 00       	mov    $0x4026c0,%ecx
  400a09:	ba d8 26 40 00       	mov    $0x4026d8,%edx
  400a0e:	be ef 04 00 00       	mov    $0x4ef,%esi
  400a13:	bf a0 27 40 00       	mov    $0x4027a0,%edi
  400a18:	e8 63 f9 ff ff       	call   400380 <_ZSt21__glibcxx_assert_failPKciS0_S0_@plt>
	return *(this->_M_impl._M_start + __n);
  400a1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a21:	48 8b 00             	mov    (%rax),%rax
  400a24:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400a28:	48 c1 e2 03          	shl    $0x3,%rdx
  400a2c:	48 01 d0             	add    %rdx,%rax
      }
  400a2f:	c9                   	leave
  400a30:	c3                   	ret

0000000000400a31 <_ZSt3minImERKT_S2_S2_>:
    min(const _Tp& __a, const _Tp& __b)
  400a31:	55                   	push   %rbp
  400a32:	48 89 e5             	mov    %rsp,%rbp
  400a35:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400a39:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      if (__b < __a)
  400a3d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a41:	48 8b 10             	mov    (%rax),%rdx
  400a44:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a48:	48 8b 00             	mov    (%rax),%rax
  400a4b:	48 39 c2             	cmp    %rax,%rdx
  400a4e:	73 06                	jae    400a56 <_ZSt3minImERKT_S2_S2_+0x25>
	return __b;
  400a50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a54:	eb 04                	jmp    400a5a <_ZSt3minImERKT_S2_S2_+0x29>
      return __a;
  400a56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  400a5a:	5d                   	pop    %rbp
  400a5b:	c3                   	ret

0000000000400a5c <_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC1Ev>:
	_Vector_impl_data() _GLIBCXX_NOEXCEPT
  400a5c:	55                   	push   %rbp
  400a5d:	48 89 e5             	mov    %rsp,%rbp
  400a60:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _M_start(), _M_finish(), _M_end_of_storage()
  400a64:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a68:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  400a6f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a73:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400a7a:	00 
  400a7b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a7f:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  400a86:	00 
	{ }
  400a87:	90                   	nop
  400a88:	5d                   	pop    %rbp
  400a89:	c3                   	ret

0000000000400a8a <_ZNSt15__new_allocatorIlED1Ev>:
#if __cplusplus >= 201103L
      __new_allocator& operator=(const __new_allocator&) = default;
#endif

#if __cplusplus <= 201703L
      ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  400a8a:	55                   	push   %rbp
  400a8b:	48 89 e5             	mov    %rsp,%rbp
  400a8e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400a92:	90                   	nop
  400a93:	5d                   	pop    %rbp
  400a94:	c3                   	ret
  400a95:	90                   	nop

0000000000400a96 <_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm>:
      _M_deallocate(pointer __p, size_t __n)
  400a96:	55                   	push   %rbp
  400a97:	48 89 e5             	mov    %rsp,%rbp
  400a9a:	48 83 ec 40          	sub    $0x40,%rsp
  400a9e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400aa2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  400aa6:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
	if (__p)
  400aaa:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  400aaf:	74 30                	je     400ae1 <_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm+0x4b>
	  _Tr::deallocate(_M_impl, __p, __n);
  400ab1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ab5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400ab9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400abd:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400ac1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400ac5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      { __a.deallocate(__p, __n); }
  400ac9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400acd:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  400ad1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ad5:	48 89 ce             	mov    %rcx,%rsi
  400ad8:	48 89 c7             	mov    %rax,%rdi
  400adb:	e8 d0 04 00 00       	call   400fb0 <_ZNSt15__new_allocatorIlE10deallocateEPlm>
  400ae0:	90                   	nop
      }
  400ae1:	90                   	nop
  400ae2:	c9                   	leave
  400ae3:	c3                   	ret

0000000000400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT
  400ae4:	55                   	push   %rbp
  400ae5:	48 89 e5             	mov    %rsp,%rbp
  400ae8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
  400aec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400af0:	48 8b 50 08          	mov    0x8(%rax),%rdx
  400af4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400af8:	48 8b 00             	mov    (%rax),%rax
  400afb:	48 29 c2             	sub    %rax,%rdx
  400afe:	48 89 d0             	mov    %rdx,%rax
  400b01:	48 c1 f8 03          	sar    $0x3,%rax
  400b05:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	if (__dif < 0)
  400b09:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
	return size_type(__dif);
  400b0e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  400b12:	5d                   	pop    %rbp
  400b13:	c3                   	ret

0000000000400b14 <_ZNSt6vectorIlSaIlEE17_M_default_appendEm>:

#if __cplusplus >= 201103L
  template<typename _Tp, typename _Alloc>
    _GLIBCXX20_CONSTEXPR
    void
    vector<_Tp, _Alloc>::
  400b14:	55                   	push   %rbp
  400b15:	48 89 e5             	mov    %rsp,%rbp
  400b18:	53                   	push   %rbx
  400b19:	48 83 ec 68          	sub    $0x68,%rsp
  400b1d:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
  400b21:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
    _M_default_append(size_type __n)
    {
      if (__n != 0)
  400b25:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  400b2a:	0f 84 ee 01 00 00    	je     400d1e <_ZNSt6vectorIlSaIlEE17_M_default_appendEm+0x20a>
	{
	  const size_type __size = size();
  400b30:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400b34:	48 89 c7             	mov    %rax,%rdi
  400b37:	e8 a8 ff ff ff       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  400b3c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	  size_type __navail = size_type(this->_M_impl._M_end_of_storage
  400b40:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400b44:	48 8b 50 10          	mov    0x10(%rax),%rdx
					 - this->_M_impl._M_finish);
  400b48:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400b4c:	48 8b 40 08          	mov    0x8(%rax),%rax
  400b50:	48 29 c2             	sub    %rax,%rdx
  400b53:	48 89 d0             	mov    %rdx,%rax
  400b56:	48 c1 f8 03          	sar    $0x3,%rax
	  size_type __navail = size_type(this->_M_impl._M_end_of_storage
  400b5a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)

	  if (__size > max_size() || __navail > max_size() - __size)
  400b5e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400b62:	48 89 c7             	mov    %rax,%rdi
  400b65:	e8 3e 02 00 00       	call   400da8 <_ZNKSt6vectorIlSaIlEE8max_sizeEv>
  400b6a:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  400b6e:	72 16                	jb     400b86 <_ZNSt6vectorIlSaIlEE17_M_default_appendEm+0x72>
  400b70:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400b74:	48 89 c7             	mov    %rax,%rdi
  400b77:	e8 2c 02 00 00       	call   400da8 <_ZNKSt6vectorIlSaIlEE8max_sizeEv>
  400b7c:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  400b80:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  400b84:	73 07                	jae    400b8d <_ZNSt6vectorIlSaIlEE17_M_default_appendEm+0x79>
  400b86:	b8 01 00 00 00       	mov    $0x1,%eax
  400b8b:	eb 05                	jmp    400b92 <_ZNSt6vectorIlSaIlEE17_M_default_appendEm+0x7e>
  400b8d:	b8 00 00 00 00       	mov    $0x0,%eax
  400b92:	84 c0                	test   %al,%al
	    __builtin_unreachable();

	  if (__navail >= __n)
  400b94:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400b98:	48 3b 45 90          	cmp    -0x70(%rbp),%rax
  400b9c:	72 3e                	jb     400bdc <_ZNSt6vectorIlSaIlEE17_M_default_appendEm+0xc8>
	    {
	      if (!this->_M_impl._M_finish)
  400b9e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400ba2:	48 8b 40 08          	mov    0x8(%rax),%rax
  400ba6:	48 85 c0             	test   %rax,%rax
		__builtin_unreachable();

	      _GLIBCXX_ASAN_ANNOTATE_GROW(__n);
	      this->_M_impl._M_finish =
		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
						 __n, _M_get_Tp_allocator());
  400ba9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400bad:	48 89 c7             	mov    %rax,%rdi
  400bb0:	e8 11 fe ff ff       	call   4009c6 <_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>
  400bb5:	48 89 c2             	mov    %rax,%rdx
		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
  400bb8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400bbc:	48 8b 40 08          	mov    0x8(%rax),%rax
  400bc0:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  400bc4:	48 89 ce             	mov    %rcx,%rsi
  400bc7:	48 89 c7             	mov    %rax,%rdi
  400bca:	e8 fb 01 00 00       	call   400dca <_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E>
	      this->_M_impl._M_finish =
  400bcf:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  400bd3:	48 89 42 08          	mov    %rax,0x8(%rdx)
	      this->_M_impl._M_start = __new_start;
	      this->_M_impl._M_finish = __new_start + __size + __n;
	      this->_M_impl._M_end_of_storage = __new_start + __len;
	    }
	}
    }
  400bd7:	e9 42 01 00 00       	jmp    400d1e <_ZNSt6vectorIlSaIlEE17_M_default_appendEm+0x20a>
	      pointer __old_start = this->_M_impl._M_start;
  400bdc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400be0:	48 8b 00             	mov    (%rax),%rax
  400be3:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
	      pointer __old_finish = this->_M_impl._M_finish;
  400be7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400beb:	48 8b 40 08          	mov    0x8(%rax),%rax
  400bef:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
		_M_check_len(__n, "vector::_M_default_append");
  400bf3:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  400bf7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400bfb:	ba c6 27 40 00       	mov    $0x4027c6,%edx
  400c00:	48 89 ce             	mov    %rcx,%rsi
  400c03:	48 89 c7             	mov    %rax,%rdi
  400c06:	e8 e9 01 00 00       	call   400df4 <_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc>
  400c0b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	      pointer __new_start(this->_M_allocate(__len));
  400c0f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400c13:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  400c17:	48 89 d6             	mov    %rdx,%rsi
  400c1a:	48 89 c7             	mov    %rax,%rdi
  400c1d:	e8 9a 02 00 00       	call   400ebc <_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm>
  400c22:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
		_Guard_alloc __guard(__new_start, __len, *this);
  400c26:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  400c2a:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  400c2e:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  400c32:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400c36:	48 89 c7             	mov    %rax,%rdi
  400c39:	e8 c8 02 00 00       	call   400f06 <_ZNSt6vectorIlSaIlEE12_Guard_allocC1EPlmRSt12_Vector_baseIlS0_E>
						 _M_get_Tp_allocator());
  400c3e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400c42:	48 89 c7             	mov    %rax,%rdi
  400c45:	e8 7c fd ff ff       	call   4009c6 <_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>
  400c4a:	48 89 c2             	mov    %rax,%rdx
		std::__uninitialized_default_n_a(__new_start + __size, __n,
  400c4d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c51:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  400c58:	00 
  400c59:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400c5d:	48 01 c1             	add    %rax,%rcx
  400c60:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  400c64:	48 89 c6             	mov    %rax,%rsi
  400c67:	48 89 cf             	mov    %rcx,%rdi
  400c6a:	e8 5b 01 00 00       	call   400dca <_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E>
				__new_start, _M_get_Tp_allocator());
  400c6f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400c73:	48 89 c7             	mov    %rax,%rdi
  400c76:	e8 4b fd ff ff       	call   4009c6 <_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>
  400c7b:	48 89 c1             	mov    %rax,%rcx
		    _S_relocate(__old_start, __old_finish,
  400c7e:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  400c82:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  400c86:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400c8a:	48 89 c7             	mov    %rax,%rdi
  400c8d:	e8 eb 02 00 00       	call   400f7d <_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_>
		__guard._M_storage = __old_start;
  400c92:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400c96:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
		__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
  400c9a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400c9e:	48 8b 40 10          	mov    0x10(%rax),%rax
  400ca2:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
  400ca6:	48 c1 f8 03          	sar    $0x3,%rax
  400caa:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
	      }
  400cae:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400cb2:	48 89 c7             	mov    %rax,%rdi
  400cb5:	e8 86 02 00 00       	call   400f40 <_ZNSt6vectorIlSaIlEE12_Guard_allocD1Ev>
	      this->_M_impl._M_start = __new_start;
  400cba:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400cbe:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  400cc2:	48 89 10             	mov    %rdx,(%rax)
	      this->_M_impl._M_finish = __new_start + __size + __n;
  400cc5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400cc9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  400ccd:	48 01 d0             	add    %rdx,%rax
  400cd0:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400cd7:	00 
  400cd8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400cdc:	48 01 c2             	add    %rax,%rdx
  400cdf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400ce3:	48 89 50 08          	mov    %rdx,0x8(%rax)
	      this->_M_impl._M_end_of_storage = __new_start + __len;
  400ce7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400ceb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400cf2:	00 
  400cf3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400cf7:	48 01 c2             	add    %rax,%rdx
  400cfa:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400cfe:	48 89 50 10          	mov    %rdx,0x10(%rax)
    }
  400d02:	eb 1a                	jmp    400d1e <_ZNSt6vectorIlSaIlEE17_M_default_appendEm+0x20a>
	      }
  400d04:	48 89 c3             	mov    %rax,%rbx
  400d07:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400d0b:	48 89 c7             	mov    %rax,%rdi
  400d0e:	e8 2d 02 00 00       	call   400f40 <_ZNSt6vectorIlSaIlEE12_Guard_allocD1Ev>
  400d13:	48 89 d8             	mov    %rbx,%rax
  400d16:	48 89 c7             	mov    %rax,%rdi
  400d19:	e8 02 f7 ff ff       	call   400420 <_Unwind_Resume@plt>
    }
  400d1e:	90                   	nop
  400d1f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400d23:	c9                   	leave
  400d24:	c3                   	ret
  400d25:	90                   	nop

0000000000400d26 <_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl>:

      // Called by erase(q1,q2), clear(), resize(), _M_fill_assign,
      // _M_assign_aux.
      _GLIBCXX20_CONSTEXPR
      void
      _M_erase_at_end(pointer __pos) _GLIBCXX_NOEXCEPT
  400d26:	55                   	push   %rbp
  400d27:	48 89 e5             	mov    %rsp,%rbp
  400d2a:	48 83 ec 30          	sub    $0x30,%rsp
  400d2e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400d32:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
      {
	if (size_type __n = this->_M_impl._M_finish - __pos)
  400d36:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400d3a:	48 8b 40 08          	mov    0x8(%rax),%rax
  400d3e:	48 2b 45 d0          	sub    -0x30(%rbp),%rax
  400d42:	48 c1 f8 03          	sar    $0x3,%rax
  400d46:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400d4a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400d4f:	74 44                	je     400d95 <_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl+0x6f>
	  {
	    std::_Destroy(__pos, this->_M_impl._M_finish,
			  _M_get_Tp_allocator());
  400d51:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400d55:	48 89 c7             	mov    %rax,%rdi
  400d58:	e8 69 fc ff ff       	call   4009c6 <_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>
	    std::_Destroy(__pos, this->_M_impl._M_finish,
  400d5d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  400d61:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400d65:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  400d69:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  400d6d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  400d71:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      std::_Destroy(__first, __last);
  400d75:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400d79:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d7d:	48 89 d6             	mov    %rdx,%rsi
  400d80:	48 89 c7             	mov    %rax,%rdi
  400d83:	e8 10 00 00 00       	call   400d98 <_ZSt8_DestroyIPlEvT_S1_>
    }
  400d88:	90                   	nop
	    this->_M_impl._M_finish = __pos;
  400d89:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400d8d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  400d91:	48 89 50 08          	mov    %rdx,0x8(%rax)
	    _GLIBCXX_ASAN_ANNOTATE_SHRINK(__n);
	  }
      }
  400d95:	90                   	nop
  400d96:	c9                   	leave
  400d97:	c3                   	ret

0000000000400d98 <_ZSt8_DestroyIPlEvT_S1_>:
   * a trivial destructor, the compiler should optimize all of this
   * away, otherwise the objects' destructors must be invoked.
   */
  template<typename _ForwardIterator>
    _GLIBCXX20_CONSTEXPR inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
  400d98:	55                   	push   %rbp
  400d99:	48 89 e5             	mov    %rsp,%rbp
  400d9c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400da0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
#endif
#else
      std::_Destroy_aux<__has_trivial_destructor(_Value_type)>::
	__destroy(__first, __last);
#endif
    }
  400da4:	90                   	nop
  400da5:	5d                   	pop    %rbp
  400da6:	c3                   	ret
  400da7:	90                   	nop

0000000000400da8 <_ZNKSt6vectorIlSaIlEE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
  400da8:	55                   	push   %rbp
  400da9:	48 89 e5             	mov    %rsp,%rbp
  400dac:	48 83 ec 10          	sub    $0x10,%rsp
  400db0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _S_max_size(_M_get_Tp_allocator()); }
  400db4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400db8:	48 89 c7             	mov    %rax,%rdi
  400dbb:	e8 7c 02 00 00       	call   40103c <_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>
  400dc0:	48 89 c7             	mov    %rax,%rdi
  400dc3:	e8 19 02 00 00       	call   400fe1 <_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_>
  400dc8:	c9                   	leave
  400dc9:	c3                   	ret

0000000000400dca <_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E>:
  // __uninitialized_default_n_a specialization for std::allocator,
  // which ignores the allocator and value-initializes the elements.
  template<typename _ForwardIterator, typename _Size, typename _Tp>
    _GLIBCXX20_CONSTEXPR
    inline _ForwardIterator
    __uninitialized_default_n_a(_ForwardIterator __first, _Size __n,
  400dca:	55                   	push   %rbp
  400dcb:	48 89 e5             	mov    %rsp,%rbp
  400dce:	48 83 ec 20          	sub    $0x20,%rsp
  400dd2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400dd6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400dda:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
				allocator<_Tp>&)
    { return std::__uninitialized_default_n(__first, __n); }
  400dde:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400de2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400de6:	48 89 d6             	mov    %rdx,%rsi
  400de9:	48 89 c7             	mov    %rax,%rdi
  400dec:	e8 59 02 00 00       	call   40104a <_ZSt25__uninitialized_default_nIPlmET_S1_T0_>
  400df1:	c9                   	leave
  400df2:	c3                   	ret
  400df3:	90                   	nop

0000000000400df4 <_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc>:
      _M_check_len(size_type __n, const char* __s) const
  400df4:	55                   	push   %rbp
  400df5:	48 89 e5             	mov    %rsp,%rbp
  400df8:	53                   	push   %rbx
  400df9:	48 83 ec 38          	sub    $0x38,%rsp
  400dfd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400e01:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  400e05:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
	if (max_size() - size() < __n)
  400e09:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e0d:	48 89 c7             	mov    %rax,%rdi
  400e10:	e8 93 ff ff ff       	call   400da8 <_ZNKSt6vectorIlSaIlEE8max_sizeEv>
  400e15:	48 89 c3             	mov    %rax,%rbx
  400e18:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e1c:	48 89 c7             	mov    %rax,%rdi
  400e1f:	e8 c0 fc ff ff       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  400e24:	48 29 c3             	sub    %rax,%rbx
  400e27:	48 89 da             	mov    %rbx,%rdx
  400e2a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400e2e:	48 39 c2             	cmp    %rax,%rdx
  400e31:	0f 92 c0             	setb   %al
  400e34:	84 c0                	test   %al,%al
  400e36:	74 0c                	je     400e44 <_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc+0x50>
	  __throw_length_error(__N(__s));
  400e38:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400e3c:	48 89 c7             	mov    %rax,%rdi
  400e3f:	e8 5c f5 ff ff       	call   4003a0 <_ZSt20__throw_length_errorPKc@plt>
	const size_type __len = size() + (std::max)(size(), __n);
  400e44:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e48:	48 89 c7             	mov    %rax,%rdi
  400e4b:	e8 94 fc ff ff       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  400e50:	48 89 c3             	mov    %rax,%rbx
  400e53:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e57:	48 89 c7             	mov    %rax,%rdi
  400e5a:	e8 85 fc ff ff       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  400e5f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  400e63:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  400e67:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400e6b:	48 89 d6             	mov    %rdx,%rsi
  400e6e:	48 89 c7             	mov    %rax,%rdi
  400e71:	e8 fd 01 00 00       	call   401073 <_ZSt3maxImERKT_S2_S2_>
  400e76:	48 8b 00             	mov    (%rax),%rax
  400e79:	48 01 d8             	add    %rbx,%rax
  400e7c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  400e80:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e84:	48 89 c7             	mov    %rax,%rdi
  400e87:	e8 58 fc ff ff       	call   400ae4 <_ZNKSt6vectorIlSaIlEE4sizeEv>
  400e8c:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
  400e90:	72 12                	jb     400ea4 <_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc+0xb0>
  400e92:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e96:	48 89 c7             	mov    %rax,%rdi
  400e99:	e8 0a ff ff ff       	call   400da8 <_ZNKSt6vectorIlSaIlEE8max_sizeEv>
  400e9e:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  400ea2:	73 0e                	jae    400eb2 <_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc+0xbe>
  400ea4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ea8:	48 89 c7             	mov    %rax,%rdi
  400eab:	e8 f8 fe ff ff       	call   400da8 <_ZNKSt6vectorIlSaIlEE8max_sizeEv>
  400eb0:	eb 04                	jmp    400eb6 <_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc+0xc2>
  400eb2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      }
  400eb6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400eba:	c9                   	leave
  400ebb:	c3                   	ret

0000000000400ebc <_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm>:
      _M_allocate(size_t __n)
  400ebc:	55                   	push   %rbp
  400ebd:	48 89 e5             	mov    %rsp,%rbp
  400ec0:	48 83 ec 20          	sub    $0x20,%rsp
  400ec4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400ec8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
  400ecc:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  400ed1:	74 2b                	je     400efe <_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm+0x42>
  400ed3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400ed7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400edb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400edf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      { return __a.allocate(__n); }
  400ee3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  400ee7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400eeb:	ba 00 00 00 00       	mov    $0x0,%edx
  400ef0:	48 89 ce             	mov    %rcx,%rsi
  400ef3:	48 89 c7             	mov    %rax,%rdi
  400ef6:	e8 d1 02 00 00       	call   4011cc <_ZNSt15__new_allocatorIlE8allocateEmPKv>
  400efb:	90                   	nop
  400efc:	eb 05                	jmp    400f03 <_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm+0x47>
  400efe:	b8 00 00 00 00       	mov    $0x0,%eax
      }
  400f03:	c9                   	leave
  400f04:	c3                   	ret
  400f05:	90                   	nop

0000000000400f06 <_ZNSt6vectorIlSaIlEE12_Guard_allocC1EPlmRSt12_Vector_baseIlS0_E>:
	_Guard_alloc(pointer __s, size_type __l, _Base& __vect)
  400f06:	55                   	push   %rbp
  400f07:	48 89 e5             	mov    %rsp,%rbp
  400f0a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400f0e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400f12:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  400f16:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
  400f1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f1e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400f22:	48 89 10             	mov    %rdx,(%rax)
  400f25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f29:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400f2d:	48 89 50 08          	mov    %rdx,0x8(%rax)
  400f31:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f35:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  400f39:	48 89 50 10          	mov    %rdx,0x10(%rax)
	{ }
  400f3d:	90                   	nop
  400f3e:	5d                   	pop    %rbp
  400f3f:	c3                   	ret

0000000000400f40 <_ZNSt6vectorIlSaIlEE12_Guard_allocD1Ev>:
	~_Guard_alloc()
  400f40:	55                   	push   %rbp
  400f41:	48 89 e5             	mov    %rsp,%rbp
  400f44:	48 83 ec 10          	sub    $0x10,%rsp
  400f48:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	  if (_M_storage)
  400f4c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f50:	48 8b 00             	mov    (%rax),%rax
  400f53:	48 85 c0             	test   %rax,%rax
  400f56:	74 22                	je     400f7a <_ZNSt6vectorIlSaIlEE12_Guard_allocD1Ev+0x3a>
	    _M_vect._M_deallocate(_M_storage, _M_len);
  400f58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f5c:	48 8b 40 10          	mov    0x10(%rax),%rax
  400f60:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400f64:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  400f68:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400f6c:	48 8b 09             	mov    (%rcx),%rcx
  400f6f:	48 89 ce             	mov    %rcx,%rsi
  400f72:	48 89 c7             	mov    %rax,%rdi
  400f75:	e8 1c fb ff ff       	call   400a96 <_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm>
	}
  400f7a:	90                   	nop
  400f7b:	c9                   	leave
  400f7c:	c3                   	ret

0000000000400f7d <_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_>:
      _S_relocate(pointer __first, pointer __last, pointer __result,
  400f7d:	55                   	push   %rbp
  400f7e:	48 89 e5             	mov    %rsp,%rbp
  400f81:	48 83 ec 20          	sub    $0x20,%rsp
  400f85:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400f89:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400f8d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  400f91:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
	return std::__relocate_a(__first, __last, __result, __alloc);
  400f95:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  400f99:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400f9d:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  400fa1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fa5:	48 89 c7             	mov    %rax,%rdi
  400fa8:	e8 f1 00 00 00       	call   40109e <_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_>
      }
  400fad:	c9                   	leave
  400fae:	c3                   	ret
  400faf:	90                   	nop

0000000000400fb0 <_ZNSt15__new_allocatorIlE10deallocateEPlm>:
	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
      }

      // __p is not permitted to be a null pointer.
      void
      deallocate(_Tp* __p, size_type __n __attribute__ ((__unused__)))
  400fb0:	55                   	push   %rbp
  400fb1:	48 89 e5             	mov    %rsp,%rbp
  400fb4:	48 83 ec 20          	sub    $0x20,%rsp
  400fb8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400fbc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400fc0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
				     std::align_val_t(alignof(_Tp)));
	    return;
	  }
#endif
	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
  400fc4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400fc8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400fcf:	00 
  400fd0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400fd4:	48 89 d6             	mov    %rdx,%rsi
  400fd7:	48 89 c7             	mov    %rax,%rdi
  400fda:	e8 11 f4 ff ff       	call   4003f0 <_ZdlPvm@plt>
      }
  400fdf:	c9                   	leave
  400fe0:	c3                   	ret

0000000000400fe1 <_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_>:
      _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
  400fe1:	55                   	push   %rbp
  400fe2:	48 89 e5             	mov    %rsp,%rbp
  400fe5:	48 83 ec 40          	sub    $0x40,%rsp
  400fe9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
	const size_t __diffmax
  400fed:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  400ff4:	ff ff 0f 
  400ff7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  400ffb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400fff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401003:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401007:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40100b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40100f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      __attribute__((__always_inline__))
      _GLIBCXX_CONSTEXPR size_type
      _M_max_size() const _GLIBCXX_USE_NOEXCEPT
      {
#if __PTRDIFF_MAX__ < __SIZE_MAX__
	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
  401013:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  40101a:	ff ff 0f 
      { return _M_max_size(); }
  40101d:	90                   	nop
	return __a.max_size();
  40101e:	90                   	nop
	const size_t __allocmax = _Alloc_traits::max_size(__a);
  40101f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
	return (std::min)(__diffmax, __allocmax);
  401023:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401027:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40102b:	48 89 d6             	mov    %rdx,%rsi
  40102e:	48 89 c7             	mov    %rax,%rdi
  401031:	e8 fb f9 ff ff       	call   400a31 <_ZSt3minImERKT_S2_S2_>
  401036:	48 8b 00             	mov    (%rax),%rax
      }
  401039:	c9                   	leave
  40103a:	c3                   	ret
  40103b:	90                   	nop

000000000040103c <_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
  40103c:	55                   	push   %rbp
  40103d:	48 89 e5             	mov    %rsp,%rbp
  401040:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl; }
  401044:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401048:	5d                   	pop    %rbp
  401049:	c3                   	ret

000000000040104a <_ZSt25__uninitialized_default_nIPlmET_S1_T0_>:
    __uninitialized_default_n(_ForwardIterator __first, _Size __n)
  40104a:	55                   	push   %rbp
  40104b:	48 89 e5             	mov    %rsp,%rbp
  40104e:	48 83 ec 20          	sub    $0x20,%rsp
  401052:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401056:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      constexpr bool __can_fill
  40105a:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	__uninit_default_n(__first, __n);
  40105e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401062:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401066:	48 89 d6             	mov    %rdx,%rsi
  401069:	48 89 c7             	mov    %rax,%rdi
  40106c:	e8 77 00 00 00       	call   4010e8 <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_>
    }
  401071:	c9                   	leave
  401072:	c3                   	ret

0000000000401073 <_ZSt3maxImERKT_S2_S2_>:
    max(const _Tp& __a, const _Tp& __b)
  401073:	55                   	push   %rbp
  401074:	48 89 e5             	mov    %rsp,%rbp
  401077:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40107b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      if (__a < __b)
  40107f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401083:	48 8b 10             	mov    (%rax),%rdx
  401086:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40108a:	48 8b 00             	mov    (%rax),%rax
  40108d:	48 39 c2             	cmp    %rax,%rdx
  401090:	73 06                	jae    401098 <_ZSt3maxImERKT_S2_S2_+0x25>
	return __b;
  401092:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401096:	eb 04                	jmp    40109c <_ZSt3maxImERKT_S2_S2_+0x29>
      return __a;
  401098:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  40109c:	5d                   	pop    %rbp
  40109d:	c3                   	ret

000000000040109e <_ZSt12__relocate_aIPlS0_SaIlEET0_T_S3_S2_RT1_>:

  template <typename _InputIterator, typename _ForwardIterator,
	    typename _Allocator>
    _GLIBCXX20_CONSTEXPR
    inline _ForwardIterator
    __relocate_a(_InputIterator __first, _InputIterator __last,
  40109e:	55                   	push   %rbp
  40109f:	48 89 e5             	mov    %rsp,%rbp
  4010a2:	48 83 ec 40          	sub    $0x40,%rsp
  4010a6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4010aa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4010ae:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  4010b2:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  4010b6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4010ba:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    _GLIBCXX_NODISCARD __attribute__((__always_inline__))
    _GLIBCXX20_CONSTEXPR
    inline _Iterator
    __niter_base(_Iterator __it)
    _GLIBCXX_NOEXCEPT_IF(std::is_nothrow_copy_constructible<_Iterator>::value)
    { return __it; }
  4010be:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4010c2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4010c6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4010ca:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  4010ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4010d2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4010d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
		 _ForwardIterator __result, _Allocator& __alloc)
    noexcept(noexcept(__relocate_a_1(std::__niter_base(__first),
				     std::__niter_base(__last),
				     std::__niter_base(__result), __alloc)))
    {
      return std::__relocate_a_1(std::__niter_base(__first),
  4010da:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  4010de:	48 89 c7             	mov    %rax,%rdi
  4010e1:	e8 4d 01 00 00       	call   401233 <_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E>
				 std::__niter_base(__last),
				 std::__niter_base(__result), __alloc);
    }
  4010e6:	c9                   	leave
  4010e7:	c3                   	ret

00000000004010e8 <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_>:
        __uninit_default_n(_ForwardIterator __first, _Size __n)
  4010e8:	55                   	push   %rbp
  4010e9:	48 89 e5             	mov    %rsp,%rbp
  4010ec:	48 83 ec 70          	sub    $0x70,%rsp
  4010f0:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
  4010f4:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
	  if (__n > 0)
  4010f8:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  4010fd:	0f 84 c2 00 00 00    	je     4011c5 <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_+0xdd>
  401103:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401107:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   */
  template<typename _Tp>
    __attribute__((__always_inline__))
    inline _GLIBCXX_CONSTEXPR _Tp*
    __addressof(_Tp& __r) _GLIBCXX_NOEXCEPT
    { return __builtin_addressof(__r); }
  40110b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
		= std::__addressof(*__first);
  40110f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	      std::_Construct(__val);
  401113:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401117:	48 89 c7             	mov    %rax,%rdi
  40111a:	e8 7d 01 00 00       	call   40129c <_ZSt10_ConstructIlJEEvPT_DpOT0_>
	      ++__first;
  40111f:	48 83 45 98 08       	addq   $0x8,-0x68(%rbp)
	      __first = std::fill_n(__first, __n - 1, *__val);
  401124:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  401128:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  40112c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401130:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401134:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  401138:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40113c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  template<typename _Iter>
    __attribute__((__always_inline__))
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
    { return typename iterator_traits<_Iter>::iterator_category(); }
  401140:	90                   	nop
    fill_n(_OI __first, _Size __n, const _Tp& __value)
    {
      // concept requirements
      __glibcxx_function_requires(_OutputIteratorConcept<_OI, const _Tp&>)

      return std::__fill_n_a(__first, std::__size_to_integer(__n), __value,
  401141:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401145:	48 89 c7             	mov    %rax,%rdi
  401148:	e8 10 f5 ff ff       	call   40065d <_ZSt17__size_to_integerm>
  40114d:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  401151:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  401155:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401159:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40115d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      if (__n <= 0)
  401161:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  401166:	75 06                	jne    40116e <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_+0x86>
	return __first;
  401168:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40116c:	eb 52                	jmp    4011c0 <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_+0xd8>
      std::__fill_a(__first, __first + __n, __value);
  40116e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401172:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401179:	00 
  40117a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40117e:	48 01 c2             	add    %rax,%rdx
  401181:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401185:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401189:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
  40118d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401191:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    { std::__fill_a1(__first, __last, __value); }
  401195:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  401199:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40119d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4011a1:	48 89 ce             	mov    %rcx,%rsi
  4011a4:	48 89 c7             	mov    %rax,%rdi
  4011a7:	e8 30 01 00 00       	call   4012dc <_ZSt9__fill_a1IPllEvT_S1_RKT0_>
  4011ac:	90                   	nop
      return __first + __n;
  4011ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011b1:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4011b8:	00 
  4011b9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4011bd:	48 01 d0             	add    %rdx,%rax
			       std::__iterator_category(__first));
  4011c0:	90                   	nop
  4011c1:	48 89 45 98          	mov    %rax,-0x68(%rbp)
	  return __first;
  4011c5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
	}
  4011c9:	c9                   	leave
  4011ca:	c3                   	ret
  4011cb:	90                   	nop

00000000004011cc <_ZNSt15__new_allocatorIlE8allocateEmPKv>:
      allocate(size_type __n, const void* = static_cast<const void*>(0))
  4011cc:	55                   	push   %rbp
  4011cd:	48 89 e5             	mov    %rsp,%rbp
  4011d0:	48 83 ec 30          	sub    $0x30,%rsp
  4011d4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4011d8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4011dc:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4011e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4011e4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
  4011e8:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  4011ef:	ff ff 0f 
	if (__builtin_expect(__n > this->_M_max_size(), false))
  4011f2:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  4011f6:	0f 92 c0             	setb   %al
  4011f9:	0f b6 c0             	movzbl %al,%eax
  4011fc:	48 85 c0             	test   %rax,%rax
  4011ff:	0f 95 c0             	setne  %al
  401202:	84 c0                	test   %al,%al
  401204:	74 1a                	je     401220 <_ZNSt15__new_allocatorIlE8allocateEmPKv+0x54>
	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
  401206:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
  40120d:	ff ff 1f 
  401210:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  401214:	73 05                	jae    40121b <_ZNSt15__new_allocatorIlE8allocateEmPKv+0x4f>
	      std::__throw_bad_array_new_length();
  401216:	e8 a5 f1 ff ff       	call   4003c0 <_ZSt28__throw_bad_array_new_lengthv@plt>
	    std::__throw_bad_alloc();
  40121b:	e8 70 f1 ff ff       	call   400390 <_ZSt17__throw_bad_allocv@plt>
	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
  401220:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401224:	48 c1 e0 03          	shl    $0x3,%rax
  401228:	48 89 c7             	mov    %rax,%rdi
  40122b:	e8 b0 f1 ff ff       	call   4003e0 <_Znwm@plt>
  401230:	90                   	nop
      }
  401231:	c9                   	leave
  401232:	c3                   	ret

0000000000401233 <_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E>:
    __relocate_a_1(_Tp* __first, _Tp* __last,
  401233:	55                   	push   %rbp
  401234:	48 89 e5             	mov    %rsp,%rbp
  401237:	48 83 ec 30          	sub    $0x30,%rsp
  40123b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40123f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401243:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401247:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
      ptrdiff_t __count = __last - __first;
  40124b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40124f:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  401253:	48 c1 f8 03          	sar    $0x3,%rax
  401257:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      if (__count > 0)
  40125b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401260:	7e 25                	jle    401287 <_ZSt14__relocate_a_1IllENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E+0x54>
	  __builtin_memcpy(__result, __first, __count * sizeof(_Tp));
  401262:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401266:	48 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%rsi
  40126d:	00 
  40126e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401272:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401276:	48 89 d1             	mov    %rdx,%rcx
  401279:	48 89 f2             	mov    %rsi,%rdx
  40127c:	48 89 c6             	mov    %rax,%rsi
  40127f:	48 89 cf             	mov    %rcx,%rdi
  401282:	e8 49 f1 ff ff       	call   4003d0 <memcpy@plt>
      return __result + __count;
  401287:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40128b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401292:	00 
  401293:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401297:	48 01 d0             	add    %rdx,%rax
    }
  40129a:	c9                   	leave
  40129b:	c3                   	ret

000000000040129c <_ZSt10_ConstructIlJEEvPT_DpOT0_>:
    _Construct(_Tp* __p, _Args&&... __args)
  40129c:	55                   	push   %rbp
  40129d:	48 89 e5             	mov    %rsp,%rbp
  4012a0:	53                   	push   %rbx
  4012a1:	48 83 ec 18          	sub    $0x18,%rsp
  4012a5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
  4012a9:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  4012ad:	48 89 de             	mov    %rbx,%rsi
  4012b0:	bf 08 00 00 00       	mov    $0x8,%edi
  4012b5:	e8 82 f3 ff ff       	call   40063c <_ZnwmPv>
  4012ba:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  4012c1:	ba 00 00 00 00       	mov    $0x0,%edx
  4012c6:	84 d2                	test   %dl,%dl
  4012c8:	74 0b                	je     4012d5 <_ZSt10_ConstructIlJEEvPT_DpOT0_+0x39>
  4012ca:	48 89 de             	mov    %rbx,%rsi
  4012cd:	48 89 c7             	mov    %rax,%rdi
  4012d0:	e8 79 f3 ff ff       	call   40064e <_ZdlPvS_>
    }
  4012d5:	90                   	nop
  4012d6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4012da:	c9                   	leave
  4012db:	c3                   	ret

00000000004012dc <_ZSt9__fill_a1IPllEvT_S1_RKT0_>:
    __fill_a1(_ForwardIterator __first, _ForwardIterator __last,
  4012dc:	55                   	push   %rbp
  4012dd:	48 89 e5             	mov    %rsp,%rbp
  4012e0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4012e4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4012e8:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __load_outside_loop =
  4012ec:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
      _Up __val(__value);
  4012f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012f4:	48 8b 00             	mov    (%rax),%rax
  4012f7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      for (; __first != __last; ++__first)
  4012fb:	eb 10                	jmp    40130d <_ZSt9__fill_a1IPllEvT_S1_RKT0_+0x31>
	*__first = __val;
  4012fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401301:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401305:	48 89 10             	mov    %rdx,(%rax)
      for (; __first != __last; ++__first)
  401308:	48 83 45 e8 08       	addq   $0x8,-0x18(%rbp)
  40130d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401311:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  401315:	75 e6                	jne    4012fd <_ZSt9__fill_a1IPllEvT_S1_RKT0_+0x21>
    }
  401317:	90                   	nop
  401318:	90                   	nop
  401319:	5d                   	pop    %rbp
  40131a:	c3                   	ret

Disassembly of section .fini:

000000000040131c <_fini>:
  40131c:	f3 0f 1e fa          	endbr64
  401320:	48 83 ec 08          	sub    $0x8,%rsp
  401324:	48 83 c4 08          	add    $0x8,%rsp
  401328:	c3                   	ret
