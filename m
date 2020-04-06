Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 027D419FAC2
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 18:47:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLUtr-0000aN-NQ; Mon, 06 Apr 2020 16:47:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1jLUtq-0000Zz-Nw
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n6KLsIL5V6k4cItTzey0/EFVgvxOMTcpSkXR1SJgtjQ=; b=aFsNKPoK2uY/0XDEuNZQsJBMoW
 ut8Zvi0E/xqUwyPNN4hJRo1HpOeN9o9j6J35NgrrpZZh+iZXi1t6mynrnuIqxTqYVS9aLU9Yka6WK
 DKZXOJvBvCZwAT0ZNvITtz8y9J6NBZCL8lzag1L6JPjG0uIjleEpOUysH+qhe4fIzyfQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n6KLsIL5V6k4cItTzey0/EFVgvxOMTcpSkXR1SJgtjQ=; b=cj01E676vtXHOt11s87+KG318i
 gUug7lNlpDygayT6DCDKzYF0HVP02COGSRXxE7b1Kvn5daXbErPgdiVJLDztgjYCyI6vT7oHkon7a
 c84r8+UxKVDw5YRv9q+gx+PR62TQJgvAX1ogbi+x7AIqNaTH+A7RRCNYz2HHnPFojn4U=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLUtm-005hIz-Aj
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=n6KLsIL5V6k4cItTzey0/EFVgvxOMTcpSkXR1SJgtjQ=; b=M1pb1wWDO+F6JveWkE4TuyTu2l
 GM52up/Ub+9M/NBHzbc+N/vpI5faViAewjHfL7qtJUTtMF0vFo7S/joX28WPkZmb1MuLHvjvBNksI
 k+rtfcvPwYavL0WZ6P6dFcT9Z8xcJGstFeBCml5Og9cG7DB20An7kg16oWyVVw8GVXYr/y+E27Siq
 hBpJyJR1QuuJTh2xScMKWG7ryaoT/64HPVjtsdRvq2b7brJgl4+OWDKIiR28rI41v2KOAavLFu99g
 mgAal+yLlDYw+LDkMZp3ekPIHvr4p1hZlL/bl4u/oaOuoCykWDy+qEQGAP2JY7QvdJdILOVzgrvQd
 gcsQPHIg==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jLUtV-0002ZP-NF; Mon, 06 Apr 2020 16:46:41 +0000
Date: Mon, 6 Apr 2020 09:46:41 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200406164641.GF21484@bombadil.infradead.org>
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406164057.GA18312@nautica>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLUtm-005hIz-Aj
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Alirzaev <l29ah@cock.li>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 06, 2020 at 06:40:57PM +0200, Dominique Martinet wrote:
> Anyway, I agree looking at O_NONBLOCK for that isn't obvious.
> I agree with the usecase here and posix allows short reads regardless of
> the flag so the behaviour is legal either way ; the filesystem is
> allowed to return whenever it wants on a whim - let's just add some docs
> as you suggest unless Sergey has something to add.

Ahahahahhahahahahaha.

POSIX may well "allow" short reads, but userspace programmers basically
never check the return value from read().  Short reads aren't actually
allowed.  That's why signals are only allowed to interrupt syscalls if
they're fatal (and the application will never see the returned value
because it's already dead).


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
