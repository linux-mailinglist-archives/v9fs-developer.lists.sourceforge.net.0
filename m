Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E154B6495A9
	for <lists+v9fs-developer@lfdr.de>; Sun, 11 Dec 2022 19:28:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p4R40-0005ze-1x;
	Sun, 11 Dec 2022 18:28:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1p4R3m-0005zV-0N
 for v9fs-developer@lists.sourceforge.net;
 Sun, 11 Dec 2022 18:28:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VcIjNZvmXhwLlIH4qzTb3os7YT1CTCX89zz+g7s11S8=; b=ejZ6v3cltdNU3owL6Ve9JwjVn0
 7Jf5hQb34WUqUAFMvFx8Q6Z0pQSo9uocTyv1dm4vTR0pWIZ8kT5g3MXiUqWWmGRfhRoaHny/0X1M4
 rhUHTVy0trg3klpNuvrDdnIF2hN4+qRvwFZQWPBGgmQjhvA0QoTnJ65RfVQ+wU+22pEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VcIjNZvmXhwLlIH4qzTb3os7YT1CTCX89zz+g7s11S8=; b=UxTmDhpmB399Ey6h4IJ7bIzI11
 SeZzVdbKvGZtMLINqUaR0QmORZZjnxsrvOU4GBpo8RZWyin1cvKAqj0VdZw+lRV35yHLeGEdS1KSb
 9JzG0C6YVW68v+v5vTV8hC1fUVV5jYd8mgK/35iwILWS3jNvqZ0VGYC8ReGxkfhlWUJs=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p4R3f-00E1ha-K9 for v9fs-developer@lists.sourceforge.net;
 Sun, 11 Dec 2022 18:28:21 +0000
Received: by mail-qt1-f182.google.com with SMTP id ay32so7380972qtb.11
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 11 Dec 2022 10:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=VcIjNZvmXhwLlIH4qzTb3os7YT1CTCX89zz+g7s11S8=;
 b=MGBmNEXQ9KDFHMWkhfA16f3WXE9+n6bQWGbQ/WBcrwvvD7XGUxNJ4lULAQ4bF52hyX
 I45Gmp4HDqpBwWuXX3l+4nvpELR0hLZgp15u/sM1JcfxMioNWKmTXOmZ3q/OnbB9HyzY
 NTeZGgpA0T0hHbjbfhGwL2uIoepMHlEZ6wf+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VcIjNZvmXhwLlIH4qzTb3os7YT1CTCX89zz+g7s11S8=;
 b=35gGP7/OL4irq+RfBNGR5L70/S3VTRCoePZCakUxFvbb0AzVbJrzUG528TEnQiRE4a
 kCKxzPXJd3EnOWWEK48OoNZGBhUJszWajKbYRcYMkkOkXz5PcKmScwkrvwN4XIbCLO3J
 RdI3ZCL7x0DLUfsOa1JBzRNkQz+wXHKGKR4gFI1SBtcjn8OVp1IyAbi9lVodKxxn01p8
 q4fuvlLu/weoQY4so7rndGQzHDRy4oV5W1S1UK4FFL5lBE3X+QPbmUZP2dpbAa+u8POI
 /ttq0VDBTu7kMAuPaAfWiZUphi85fkis2MqjPj45BIZ/O+s+phfJ0X7myRxKRfyPr5h0
 yU3w==
X-Gm-Message-State: ANoB5pkIApcFjX7oi19tcmkGac9rdQDF0Ih7nR+vzK/5qbhT32L6jFgT
 QlXEMSgENH2vzLNNdI0rzT2hqY2ofKWyjsT/
X-Google-Smtp-Source: AA0mqf6aihkyP16H3DDcTsV5uRtS7xBaBE4ZR9WmRA3gpGeS2zP9BTCv8NChyvyc2NQxRr6VgM5BVA==
X-Received: by 2002:a05:622a:6108:b0:3a7:e838:11c8 with SMTP id
 hg8-20020a05622a610800b003a7e83811c8mr15718773qtb.45.1670783289400; 
 Sun, 11 Dec 2022 10:28:09 -0800 (PST)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com.
 [209.85.219.54]) by smtp.gmail.com with ESMTPSA id
 e2-20020ac845c2000000b003a5c6ad428asm4456077qto.92.2022.12.11.10.28.05
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Dec 2022 10:28:07 -0800 (PST)
Received: by mail-qv1-f54.google.com with SMTP id mn15so6830092qvb.13
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 11 Dec 2022 10:28:05 -0800 (PST)
X-Received: by 2002:ad4:4101:0:b0:4b1:856b:4277 with SMTP id
 i1-20020ad44101000000b004b1856b4277mr70224982qvp.129.1670783284766; Sun, 11
 Dec 2022 10:28:04 -0800 (PST)
MIME-Version: 1.0
References: <202212112131.994277de-oliver.sang@intel.com>
In-Reply-To: <202212112131.994277de-oliver.sang@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 11 Dec 2022 10:27:48 -0800
X-Gmail-Original-Message-ID: <CAHk-=wipgS=05hJdztC8sJj01wpxMKQ67tV53UyFa2WtZ93o5A@mail.gmail.com>
Message-ID: <CAHk-=wipgS=05hJdztC8sJj01wpxMKQ67tV53UyFa2WtZ93o5A@mail.gmail.com>
To: kernel test robot <oliver.sang@intel.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The disassembly isn't great, because the test robot doesn't
 try to find where the instructions start, but before that > 4: 48 8b 57 18
 mov 0x18(%rdi),%rdx instruction we also had a 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p4R3f-00E1ha-K9
Subject: Re: [V9fs-developer]
 [ammarfaizi2-block:dhowells/linux-fs/fscache-fixes] [mm, netfs,
 fscache] 6919cda8e0: canonical_address#:#[##]
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 samba-technical@lists.samba.org, lkp@intel.com,
 Ammar Faizi <ammarfaizi2@gnuweeb.org>,
 Rohith Surabattula <rohiths.msft@gmail.com>, linux-cifs@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>, ceph-devel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 linux-cachefs@redhat.com, GNU/Weeb Mailing List <gwml@vger.gnuweeb.org>,
 oe-lkp@lists.linux.dev, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-mm@kvack.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The disassembly isn't great, because the test robot doesn't try to
find where the instructions start, but before that

>    4:   48 8b 57 18             mov    0x18(%rdi),%rdx

instruction we also had a

      mov    (%rdi),%rax

and it looks like this is the very top of 'filemap_release_folio()',
so '%rdi' contains the folio pointer coming into this.

End result:

On Sun, Dec 11, 2022 at 6:27 AM kernel test robot <oliver.sang@intel.com> wrote:
>
>    4:   48 8b 57 18             mov    0x18(%rdi),%rdx
>    8:   83 e0 01                and    $0x1,%eax
>    b:   74 59                   je     0x66

The

    and    $0x1,%eax
    je     0x66

above is the test for

    BUG_ON(!folio_test_locked(folio));

where it's jumping out to the 'ud2' in case the lock bit (bit #0) isn't set.

Then we have this:

>    d:   48 f7 07 00 60 00 00    testq  $0x6000,(%rdi)
>   14:   74 22                   je     0x38

Which is testing PG_private | PG_private2, and jumping out (which we
also don't do) if neither is set.

And then we have:

>   16:   48 8b 07                mov    (%rdi),%rax
>   19:   f6 c4 80                test   $0x80,%ah
>   1c:   75 32                   jne    0x50

Which is checking for PG_writeback.

So then we get to

    if (mapping && mapping->a_ops->release_folio)
            return mapping->a_ops->release_folio(folio, gfp);

which is this:

>   1e:   48 85 d2                test   %rdx,%rdx
>   21:   74 34                   je     0x57

This %rdx value is the early load from the top of the function, it's
checking 'mapping' for NULL.

It's not NULL, but it's some odd value according to the oops report:

  RDX: ffff889f03987f71

which doesn't look like it's valid (well, it's a valid kernel pointer,
but it's not aligned like a 'mapping' pointer should be.

So now when we're going to load 'a_ops' from there, we load another
garbage value:

>   23:   48 8b 82 90 00 00 00    mov    0x90(%rdx),%rax

and we now have RAX: b000000000000000

and then the 'a_ops->release_folio' access will trap:

>   2a:*  48 8b 40 48             mov    0x48(%rax),%rax          <-- trapping instruction
>   2e:   48 85 c0                test   %rax,%rax
>   31:   74 24                   je     0x57

The above is the "load a_ops->release_folio and test it for NULL", but
the load took a page fault because RAX was garbage.

But RAX was garbage because we already had a bogus "mapping" pointer earlier.

Now, why 'mapping' was bogus, I don't know. Maybe that page wasn't a
page cache page at all? The mapping field is in a union and can
contain other things.

So I have no explanation for the oops, but I thought I'd just post the
decoding of the instruction stream in case that helps somebody else to
figure it out.

                 Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
