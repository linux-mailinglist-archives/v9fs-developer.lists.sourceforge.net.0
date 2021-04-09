Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E5D359D22
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 13:19:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUpAJ-0003ns-Q5; Fri, 09 Apr 2021 11:19:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lUpAH-0003nk-Ci
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:19:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0G+omcGOetSmBATjuAzTrvUrz2CKNcOMwN8ZffcfyG4=; b=OEyf9XK/iGM4FMDPJBaGdRqnJA
 wCG69gY8h2SiK0EcM64EEi17ULjO53bc3TpG43RCJD5SvMbZaC5BT3xv2Q3RMa1X17Qi1Ee8xQerK
 sRrPZjSmIvVmaHL3MeLefp3EVUrPtPekf+eY4SWkqKW446gXiYv30F+UqsRlIWb0LHOs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0G+omcGOetSmBATjuAzTrvUrz2CKNcOMwN8ZffcfyG4=; b=IwNSvbd6tozVIEadbY1bFjhLG5
 wFLwRttvFGl8wDNLj/Gvzg+K3L8MugR9RaEyM+EjEacsp8V8CvOMJoInwBjltYy0zgz6Z96XZzaoa
 V9ILjLtvvLfi/yKDDcD3ukzCAFWm+LETfi4Ip869wwfq6E0Ybm55Ki25edsiHXURLgPs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUp9v-00A0LS-BQ
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 11:19:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0G+omcGOetSmBATjuAzTrvUrz2CKNcOMwN8ZffcfyG4=; b=cYjFYTUAND/8orFcuvXNhJh1Pn
 S4JLFssq7lsdlXEYLFeO7iCpsoeEuDQZRQus+40z4ZiKzZfGqh0Txij8C4sO4nivhKozSMZhzMR67
 58doyVPxBZtBqonPz5HD8++G2Cye3xFp0YwjxhN8HrqnnfLaMDS2T8rKFmYuOKyUCVkn4nNME1OmP
 R2+kdWozmWuuf2wa7o17y1AGWbUvm7Q8EWqa2dcT0Y/l/fcCge0kMN4Eo++bIdeHCZVpLcrL1x7Bb
 1VY6fdzgy2VnC9oQnRyfbtE1k/K+zbBQSRPWyC67EMnX5Qef2wHj1w+vHR7UlrOZksh+r/yu4rBEy
 9kcK7F2w==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lUp7s-000GjE-Mr; Fri, 09 Apr 2021 11:17:01 +0000
Date: Fri, 9 Apr 2021 12:16:36 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210409111636.GR2531743@casper.infradead.org>
References: <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
 <161796595714.350846.1547688999823745763.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161796595714.350846.1547688999823745763.stgit@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUp9v-00A0LS-BQ
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
 linux-mm@kvack.org, ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 torvalds@linux-foundation.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Apr 09, 2021 at 11:59:17AM +0100, David Howells wrote:
> Make functions that test page bits return a bool, not an int.  This means
> that the value is definitely 0 or 1 if they're used in arithmetic, rather
> than rely on test_bit() and friends to return this (though they probably
> should).

iirc i looked at doing this as part of the folio work, and it ended up
increasing the size of the kernel.  Did you run bloat-o-meter on the
result of doing this?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
