Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDF254457E
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Jun 2022 10:16:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzDL2-0006n1-W4; Thu, 09 Jun 2022 08:16:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nzDL1-0006mr-UD
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 08:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K8SVe5aiMwQ66aCyV8FH9qy1UnNuhdudkR6VUPMWV6A=; b=R5QE6Xv0H7hlSByVMcYY8NR2NI
 ySaj/864Fwtaaapck6TMLngAM72jcQJyyGIcPyBuDePlOQrfsAyEtSU2bMCTDkAPDBCmeX7AoaS80
 2pzjztJY460LuCa89rEjeSgS7DMCwhGmTpBKIN65TNnR+vQFwbPgStU85+UVa1flb8K4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K8SVe5aiMwQ66aCyV8FH9qy1UnNuhdudkR6VUPMWV6A=; b=hvfLSKOqp8qbQj8CKx6+i778M7
 vtoLgUiAPZ2Px4Iim0UnxFNrsmsyzsOkAtt411hCtB1++s453nR8vsKX/7e/IqFZcanbOhB42o8Ma
 cjgzB82xlzVID92u4l7fiNlzNvDaNPA71FQnm4XbUETWhuvXxdLfzFuvB8b88SL/Rbb4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzDL0-0003Df-Hc
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 08:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654762573;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K8SVe5aiMwQ66aCyV8FH9qy1UnNuhdudkR6VUPMWV6A=;
 b=ScHxgGti8/L37nkydtzK1uD/bl4LLHinSnbAbxtZFd2ac2mQgJx07UHHcWNlKbii8juRfL
 +8NafJfKVrg5t3ZyfAFKsRrMHVfH910ZaxHTs0DaXc8cbBs6U+bQaOfIziFs9Ij6WeTXUv
 iGiXM2AJujbdu2eRbx1kUSRdxJAmatM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-swCr3ZqTNYevSKMJZgmZVA-1; Thu, 09 Jun 2022 04:16:07 -0400
X-MC-Unique: swCr3ZqTNYevSKMJZgmZVA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89641833967;
 Thu,  9 Jun 2022 08:16:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 95887492C3B;
 Thu,  9 Jun 2022 08:16:04 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <165476202136.3999992.433442175457370240.stgit@warthog.procyon.org.uk>
References: <165476202136.3999992.433442175457370240.stgit@warthog.procyon.org.uk>
To: jlayton@kernel.org
MIME-Version: 1.0
Content-ID: <4000416.1654762563.1@warthog.procyon.org.uk>
Date: Thu, 09 Jun 2022 09:16:03 +0100
Message-ID: <4000417.1654762563@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Here's a program that can be used to exercise the
 iter_xarray_get_pages()
 function in userspace. In the main() function, there are various parameters
 that can be adjusted, such as the starting offset [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzDL0-0003Df-Hc
Subject: Re: [V9fs-developer] [PATCH] iov_iter: Fix iter_xarray_get_pages{,
 _alloc}()
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
Cc: linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Gao Xiang <xiang@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Here's a program that can be used to exercise the iter_xarray_get_pages()
function in userspace.  In the main() function, there are various parameters
that can be adjusted, such as the starting offset (iter.xarray_start), the
size of the content (iter.count), the maximum number of pages to be extracted
(maxpages) and the maximum size to be extracted (maxsize).

David
---
/* SPDX-License-Identifier: GPL-2.0 */
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef unsigned long pgoff_t;
#define PAGE_SHIFT 12
#define PAGE_SIZE ((unsigned long)1 << PAGE_SHIFT)
#define PAGE_MASK (~(PAGE_SIZE - 1))

struct page;
struct xarray;

struct iov_iter {
	size_t iov_offset;
	size_t count;
	loff_t xarray_start;
};
#define __is_constexpr(x) \
	(sizeof(int) == sizeof(*(8 ? ((void *)((long)(x) * 0l)) : (int *)8)))
#define __typecheck(x, y) \
	(!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))

#define __no_side_effects(x, y) \
		(__is_constexpr(x) && __is_constexpr(y))

#define __safe_cmp(x, y) \
		(__typecheck(x, y) && __no_side_effects(x, y))

#define __cmp(x, y, op)	((x) op (y) ? (x) : (y))

#define __cmp_once(x, y, unique_x, unique_y, op) ({	\
		typeof(x) unique_x = (x);		\
		typeof(y) unique_y = (y);		\
		__cmp(unique_x, unique_y, op); })

#define __careful_cmp(x, y, op) \
	__builtin_choose_expr(__safe_cmp(x, y), \
		__cmp(x, y, op), \
		__cmp_once(x, y, __x, __y, op))
#define min(x, y)	__careful_cmp(x, y, <)
#define min_t(type, x, y)	__careful_cmp((type)(x), (type)(y), <)

static int apply_fix;

static ssize_t iter_xarray_populate_pages(pgoff_t index, unsigned int nr_pages)
{
	return nr_pages;
}

static ssize_t iter_xarray_get_pages(struct iov_iter *i, size_t maxsize,
				     unsigned maxpages, size_t *_start_offset)
{
	unsigned nr, offset;
	pgoff_t index, count;
	size_t size = maxsize, head_size, tail_size;
	loff_t pos;

	if (!size || !maxpages)
		return 0;

	pos = i->xarray_start + i->iov_offset;
	index = pos >> PAGE_SHIFT;
	offset = pos & ~PAGE_MASK;
	*_start_offset = offset;

	count = 1;
	tail_size = head_size = PAGE_SIZE - offset;
	if (maxsize > head_size) {
		size -= head_size;
		count += size >> PAGE_SHIFT;
		tail_size = size & ~PAGE_MASK;
		if (tail_size)
			count++;
	}

	if (count > maxpages)
		count = maxpages;

	printf(" %6lx %6lu %6zx |", index, count, tail_size);

	nr = iter_xarray_populate_pages(index, count);
	if (nr == 0)
		return 0;

	if (!apply_fix) {
		size_t actual = PAGE_SIZE * nr;
		actual -= offset;
		if (nr == count && size > 0) {
			unsigned last_offset = (nr > 1) ? 0 : offset;
			actual -= PAGE_SIZE - (last_offset + size);
		}
		return actual;
	} else {
		return min(nr * PAGE_SIZE - offset, maxsize);
	}
}

ssize_t iov_iter_get_pages(struct iov_iter *i,
			   size_t maxsize, unsigned maxpages, size_t *start)
{
	if (maxsize > i->count)
		maxsize = i->count;
	if (!maxsize)
		return 0;
	return iter_xarray_get_pages(i, maxsize, maxpages, start);
}

int main()
{
	struct iov_iter iter;
	ssize_t size;
	size_t i, maxpages, maxsize, offset;

	memset(&iter, 0, sizeof(iter));

	/* Adjustable parameters */
	iter.xarray_start	= 0x11000;
	iter.count		= PAGE_SIZE * 16;
	maxpages		= 15;
	maxsize			= maxpages * PAGE_SIZE;

	printf("X-STRT X-OFFS X-CNT  | INDEX  COUNT  T-SIZE | OFFSET SIZE\n");
	printf("====== ====== ====== | ====== ====== ====== | ====== ======\n");

	for (apply_fix = 0; apply_fix < 2; apply_fix++) {
		i = 0;
		for (;;) {
			iter.iov_offset = i;
			printf("%6lx %6zx %6zx |",
			       iter.xarray_start, iter.iov_offset, iter.count);
			size = iov_iter_get_pages(&iter, maxsize, maxpages,
						  &offset);

			printf(" %6zx %6zx", offset, size);
			if (offset + size > maxsize)
				printf(" ** BIG");
			if (offset + size > iter.iov_offset + iter.count)
				printf(" ** OVER");
			printf("\n");
			if (i > PAGE_SIZE)
				break;
			i += 0x111;
		}

	}
	return 0;
}



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
