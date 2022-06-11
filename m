Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 709BD5473EA
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 12:45:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzycI-0003Pl-EJ; Sat, 11 Jun 2022 10:45:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sudipm.mukherjee@gmail.com>) id 1nzycH-0003Pf-Hc
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 10:45:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a9ATP95JSYITDvtcZYgILfU969WEQUwCi9QMxQISlfw=; b=MqFc3SOwxUE5r5VPIICsb+rVAo
 MnGOrVvmeNZ3kuz3NWka8lceqYPNx2MDrCkLw+yzGC3WNyJHmyOFb3HbbCm0x/nF+52WerrGOWhVe
 l+ZI1uWtjRrgHb8NjkkzyP4tLDWDAT/vM+CqGFZv14H4raKXWbI85ZzJJcyBT4Ti6bH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=a9ATP95JSYITDvtcZYgILfU969WEQUwCi9QMxQISlfw=; b=j
 RTNAmVySRFWcB8ivKvl69qiBk2G1iStfS0P1DK/84+rpVf+yrDOKUnZPjjNA2oE0isVG814wKQRCm
 AIAmA1TG+YM2fRoqUQ5x0FJaLDR4ThYXx/MpXlnlNuF93jlu5S2w/siXZJNVj9imUYdvBApl4W+0/
 5fgwspSHMwxbLe6w=;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzycC-00F0ly-1T
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 10:45:16 +0000
Received: by mail-wm1-f48.google.com with SMTP id
 j5-20020a05600c1c0500b0039c5dbbfa48so2238399wms.5
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Jun 2022 03:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=a9ATP95JSYITDvtcZYgILfU969WEQUwCi9QMxQISlfw=;
 b=bOBnz4yOrLBIRe9lNqLmJJYNnTUBHYxgfPjC/Q+c+by0cC6DrcHXWzzXAAQKsWs5Xy
 7H5yh5q+cSCvj9FDMI2qYQwgyW+KWhJ5k4Zjat9u+hNJxzSFcF9q10k2J5+e+E3DNndL
 lCeqaymyirCu8HVKMhERgx6kH5f/6tDGJgbu3uYRTJve23lgY17J/z/qiWTHFjMWeJuc
 6jWKfE1WBzb6/qjzIx+YjukuvouZ/eHUhHYDqj4SV5vy3IZq76QEZ/fcBwqOS75Fi9ZM
 L8426YwsgzDm0cHOigB5uFuAKuHESYnbHqM+qoIfxha1dqjpYNU0dW0RZF4Cu4SJ8mUb
 LJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=a9ATP95JSYITDvtcZYgILfU969WEQUwCi9QMxQISlfw=;
 b=jLUlIy1y68XDhOYe8JU1Y3iX/Y3cyw5Wry/Ml5qrvdJkBtnAXepJz50n3+xHwUewgD
 7qz0rErRnjOpwfpvCmIIFO8wSl5HstzOQEt+ABma80jODGt/eCiXlLKDyj4k6MsdCAAR
 Y9A20GUqb/9aE5tm3KddLD7OSzgVyV5/c+9dfHXBJ4NFdaD00/kMEjNN7xHKDQtUV9OY
 pjn//V4QYOlY58jFcQUljM6nQePHoZZNmYMCiEf8EM61UFS2bQOpEnwCPZpajORvnfEV
 FAe+O25XAs/EHDoqkHZKr2FRR4ItmZE8WsTmziQm9eXVPgMXZGMxZn5fLZ82ThUQaMhg
 VCZg==
X-Gm-Message-State: AOAM532m+/j8oGY1+W0q4b7cD5Idrr23JvyHO9dTqTVLJQaIN9+rdRD8
 fWmQh7pYk/13M7NQmjdAo1HSApkwKDE=
X-Google-Smtp-Source: ABdhPJxjfvo6XrtQ+Hcu7hnFyGXxQzXmb+60Sxx8moqSaXPRMMOx26YUKe+ROCWhkMhCSBz3y1N/cg==
X-Received: by 2002:a05:600c:4e8e:b0:39c:80ed:68ad with SMTP id
 f14-20020a05600c4e8e00b0039c80ed68admr4069701wmq.63.1654944305505; 
 Sat, 11 Jun 2022 03:45:05 -0700 (PDT)
Received: from debian (host-78-150-47-22.as13285.net. [78.150.47.22])
 by smtp.gmail.com with ESMTPSA id
 6-20020a05600c22c600b00397122e63b6sm2006978wmg.29.2022.06.11.03.45.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jun 2022 03:45:05 -0700 (PDT)
Date: Sat, 11 Jun 2022 11:45:03 +0100
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: David Howells <dhowells@redhat.com>, Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <YqRyL2sIqQNDfky2@debian>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi All, The latest mainline kernel branch fails to build for
 "arm allmodconfig", "xtensa allmodconfig" and "csky allmodconfig" with the
 error: In file included from ./include/linux/kernel.h:26,
 from ./include/linux/crypto.h:16, 
 from ./include/crypto/hash.h:11, from lib/iov_iter.c:2: lib/iov_iter.c: In
 function 'iter_xarray_get_pages': ./incl [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sudipm.mukherjee[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.48 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nzycC-00F0ly-1T
Subject: [V9fs-developer] mainline build failure due to 6c77676645ad
 ("iov_iter: Fix iter_xarray_get_pages{, _alloc}()")
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Gao Xiang <xiang@kernel.org>, linux-erofs@lists.ozlabs.org,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi All,

The latest mainline kernel branch fails to build for "arm allmodconfig",
"xtensa allmodconfig" and "csky allmodconfig" with the error:

In file included from ./include/linux/kernel.h:26,
                 from ./include/linux/crypto.h:16,
                 from ./include/crypto/hash.h:11,
                 from lib/iov_iter.c:2:
lib/iov_iter.c: In function 'iter_xarray_get_pages':
./include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast [-Werror]
   20 |         (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
      |                                   ^~
./include/linux/minmax.h:26:18: note: in expansion of macro '__typecheck'
   26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
      |                  ^~~~~~~~~~~
./include/linux/minmax.h:36:31: note: in expansion of macro '__safe_cmp'
   36 |         __builtin_choose_expr(__safe_cmp(x, y), \
      |                               ^~~~~~~~~~
./include/linux/minmax.h:45:25: note: in expansion of macro '__careful_cmp'
   45 | #define min(x, y)       __careful_cmp(x, y, <)
      |                         ^~~~~~~~~~~~~
lib/iov_iter.c:1464:16: note: in expansion of macro 'min'
 1464 |         return min(nr * PAGE_SIZE - offset, maxsize);
      |                ^~~
lib/iov_iter.c: In function 'iter_xarray_get_pages_alloc':
./include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast [-Werror]
   20 |         (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
      |                                   ^~
./include/linux/minmax.h:26:18: note: in expansion of macro '__typecheck'
   26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
      |                  ^~~~~~~~~~~
./include/linux/minmax.h:36:31: note: in expansion of macro '__safe_cmp'
   36 |         __builtin_choose_expr(__safe_cmp(x, y), \
      |                               ^~~~~~~~~~
./include/linux/minmax.h:45:25: note: in expansion of macro '__careful_cmp'
   45 | #define min(x, y)       __careful_cmp(x, y, <)
      |                         ^~~~~~~~~~~~~
lib/iov_iter.c:1628:16: note: in expansion of macro 'min'
 1628 |         return min(nr * PAGE_SIZE - offset, maxsize);


git bisect pointed to 6c77676645ad ("iov_iter: Fix iter_xarray_get_pages{,_alloc}()")

And, reverting it on top of mainline branch has fixed the build failure.

--
Regards
Sudip


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
