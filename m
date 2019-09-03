Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0474AA71C7
	for <lists+v9fs-developer@lfdr.de>; Tue,  3 Sep 2019 19:37:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i5Cjh-0006be-DA; Tue, 03 Sep 2019 17:36:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1i5Cjf-0006bU-JX
 for v9fs-developer@lists.sourceforge.net; Tue, 03 Sep 2019 17:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/yYEoh7fh6C11pgByte2eESwfx2GoMF2okfIqH5UE8c=; b=c9eOtF2bYJH47EHs+CcFqC61/E
 7aewDVqon76Ih3HeS9wkzhbw6reocxuoEI+fEY9Sxk/2I+d3Heh3Pe6nCUyyTkZXohayFSi0FiBrb
 5JqbjP6C5jXEjLCrXB+jMbGXV/kHQjdzgwaZGlc86UX/HSAYIgRB9u69wfe4wA/rR+3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/yYEoh7fh6C11pgByte2eESwfx2GoMF2okfIqH5UE8c=; b=SepA8aFXO2X4bMku0PnbAw+UEl
 MzGsv2Jdq/Vlam7t60TDqbilwerF/Yck71SLgNfZilEwoFeMzXvCrGsTGE/uox0ljm3DJMBFWDV4Y
 sDAUQDk8gHzc4LKI21FvbzjlahDKdnaAmc7AAYSzCKGsIExEh7eY0h8iviKUCqbft9yA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i5Cjd-0083lH-Dw
 for v9fs-developer@lists.sourceforge.net; Tue, 03 Sep 2019 17:36:55 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id B341BC01B; Tue,  3 Sep 2019 13:17:15 +0200 (CEST)
Date: Tue, 3 Sep 2019 13:17:00 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Bharath Vedartham <linux.bhar@gmail.com>
Message-ID: <20190903111700.GA32644@nautica>
References: <20190523165619.GA4209@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523165619.GA4209@bharath12345-Inspiron-5559>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i5Cjd-0083lH-Dw
Subject: Re: [V9fs-developer] [PATCH] 9p/vfs_super.c: Remove unused
 parameter data in v9fs_fill_super
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Bharath Vedartham wrote on Thu, May 23, 2019:
> v9fs_fill_super has a param 'void *data' which is unused in the
> function.
> 
> This patch removes the 'void *data' param in v9fs_fill_super and changes
> the parameters in all function calls of v9fs_fill_super.
> 
> Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>

I just realized I had never replied to this patch - queued it today, as
well as the other you had sent around the same period.

Sorry for the delay, and thanks for sending patches - I don't
particularily care for cleanup like this one but it's always good to
take.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
