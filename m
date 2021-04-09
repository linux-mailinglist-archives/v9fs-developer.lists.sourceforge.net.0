Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB55359EEB
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 14:36:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUqN3-0007Y2-9w; Fri, 09 Apr 2021 12:36:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUqN1-0007Xo-E7
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 12:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RQb7qzHISTbizitMiYm8wD/fZ+45DgKONa+egqhiCY0=; b=m9QGVBNrqR8MiJJH2AJm5/YRBT
 5lc4MwErPh2AtKANBvXs0nqKQKjwBZhTGa7z0wg43X6KCh167jwsIldNMGFtKgyiiyYtPk/Zug49F
 j4VkXLYQ9RZN3atIhtSv1dskm25vrEePrBPtr4nKoFoblZAJfDFM6Eb7HSW5hjOetywE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RQb7qzHISTbizitMiYm8wD/fZ+45DgKONa+egqhiCY0=; b=LSe2viL7Nx+YWzfYKVPFOLHbGo
 8PkhF/Vw0mmC/Ai+NfsEHoGP2sYsIrXqkPbZSdHpU/VE6JVldbuzz09uGXlHwN75N358dVqwwuNx2
 mvsZynAKkJSTKOx8OSmRDC4OWbnMSB1N45n+cEJ7PrHIwqf+JdboshZ7alhQnEKPJTqw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUqMZ-00AGQ5-8z
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 12:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617971745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RQb7qzHISTbizitMiYm8wD/fZ+45DgKONa+egqhiCY0=;
 b=edkRq5rJdTPO/2R1bOC1VVl7XfldywwzX4WMs/EYhfnemStwe1P7UehmWgOn92fmEj4sSg
 YYnePYlijiPH+VUx3ndrZ3QMoflL9D+dB6NNdhhuFoMUZjSJzqwOwJACN8w0vce1872SXi
 PMzD9gBG/Bs5rZqA4hCBO1I0yoT7+iU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-1VuZXlZMP_qGLOcyqDfQHg-1; Fri, 09 Apr 2021 08:35:43 -0400
X-MC-Unique: 1VuZXlZMP_qGLOcyqDfQHg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC5B019251A1;
 Fri,  9 Apr 2021 12:35:40 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E65E55DAA5;
 Fri,  9 Apr 2021 12:35:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210409111636.GR2531743@casper.infradead.org>
References: <20210409111636.GR2531743@casper.infradead.org>
 <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
 <161796595714.350846.1547688999823745763.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <625170.1617971734.1@warthog.procyon.org.uk>
Date: Fri, 09 Apr 2021 13:35:34 +0100
Message-ID: <625171.1617971734@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUqMZ-00AGQ5-8z
Subject: Re: [V9fs-developer] [RFC PATCH 2/3] mm: Return bool from pagebit
 test functions
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, jlayton@kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, torvalds@linux-foundation.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> iirc i looked at doing this as part of the folio work, and it ended up
> increasing the size of the kernel.  Did you run bloat-o-meter on the
> result of doing this?

add/remove: 2/2 grow/shrink: 15/16 up/down: 408/-599 (-191)
Function                                     old     new   delta
iomap_write_end_inline                         -     128    +128
try_to_free_swap                              59     179    +120
page_to_index.part                             -      36     +36
page_size                                    432     456     +24
PageTransCompound                            154     175     +21
truncate_inode_pages_range                   791     807     +16
invalidate_inode_pages2_range                504     518     +14
ceph_uninline_data                           969     982     +13
iomap_read_inline_data.isra                  129     139     +10
page_cache_pipe_buf_confirm                   85      93      +8
ceph_writepages_start                       3237    3243      +6
hpage_pincount_available                      94      97      +3
__collapse_huge_page_isolate                 768     771      +3
page_vma_mapped_walk                        1070    1072      +2
PageHuge                                      39      41      +2
collapse_file                               2046    2047      +1
__free_pages_ok                              449     450      +1
wait_on_page_bit_common                      598     597      -1
iomap_page_release                           104     103      -1
change_pte_range                             818     817      -1
pageblock_skip_persistent                     45      42      -3
is_transparent_hugepage                       63      60      -3
nfs_readpage                                 486     482      -4
ext4_readpage_inline                         155     151      -4
release_pages                                640     635      -5
ext4_write_inline_data_end                   286     281      -5
ext4_mb_load_buddy_gfp                       690     684      -6
afs_dir_check                                536     529      -7
page_trans_huge_map_swapcount                374     363     -11
io_uring_mmap                                199     184     -15
io_buffer_account_pin                        276     259     -17
page_to_index                                 50       -     -50
iomap_write_end                              375     306     -69
try_to_free_swap.part                        137       -    -137
PageUptodate                                 716     456    -260
Total: Before=17207139, After=17206948, chg -0.00%



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
