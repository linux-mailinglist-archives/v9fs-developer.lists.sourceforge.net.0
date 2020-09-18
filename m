Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF6026F960
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 11:35:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJCnT-00035M-Li; Fri, 18 Sep 2020 09:35:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kJCnS-000356-A2
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 09:35:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lmSsSvV/eUyk83KxPgQ2WexenH8e0Ixm8xd3pHKJsGM=; b=d/sbJaxWMCt90+TNeYuHfwfiwZ
 95euSTY3xy1HFwIhj9jvammC8KnRPZsVjpjC1RA+gwreOtQwm93QTqlTZfdhwgYJEYvvvlm8gyNES
 YCbRq5cKuIBwBfoHKEExh7QadJJ12PODp7pFRgZeag6HGFjDzDzZcXVEUUKk7Tmst4CA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lmSsSvV/eUyk83KxPgQ2WexenH8e0Ixm8xd3pHKJsGM=; b=kqasfEJJbyRTIPqT5WmFQRlBH8
 rZb1dD5SuPzwBRhJoz7jXfXHaBlH89aEZPLr3TWBEcwJQtyabgeSU0Cb1gLgJp1VMZMBAIuPe3Tzm
 Wn5cdU1YoCoR7rorxYs0YyN1+W8ilok8WvOlrTiKcGqSJeMXoV7vjOu3+Yh12fUfGS5E=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJCnG-00DzFB-NX
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 09:35:13 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 62839C01D; Fri, 18 Sep 2020 11:34:55 +0200 (CEST)
Date: Fri, 18 Sep 2020 11:34:40 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Message-ID: <20200918093440.GA1877@nautica>
References: <HE1PR0802MB255594D67D97733CFDFE777EF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <HE1PR0802MB25555E7AAFA66DA3FE025D0AF4230@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200914083200.GA9259@nautica>
 <HE1PR0802MB255560720A13BD59C11DEA00F43F0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HE1PR0802MB255560720A13BD59C11DEA00F43F0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1kJCnG-00DzFB-NX
Subject: Re: [V9fs-developer] [PATCH RFC 4/4] 9p: fix race issue in fid
 contention.
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
Cc: "lucho@ionkov.net" <lucho@ionkov.net>, Justin He <Justin.He@arm.com>,
 "ericvh@gmail.com" <ericvh@gmail.com>, Greg Kurz <groug@kaod.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Fri, Sep 18, 2020:
> If we move the counter decrease code into p9_client_clunk and put it
> instead of fid_atomic_dec, we need delete fid off the inode where it
> stores in p9_client_clunk.
> But there is no way can we acquire the inode in p9_client_clunk. Do
> you have any idea? I think introduce another parameter for
> p9_client_clunk
> Is not graceful.

You cannot write code about the inode in p9_client_clunk, the way the
code is split fs/9p can refer to net/9p but not the other way around
(module-wise, 9p can refer to 9pnet but 9pnet cannot refer to 9p or we
would have cyclic dependencies)

However I don't see what bothers you.
v9fs_dir_release can remove the fid from the inode as it does currently
and just clunk immediately afterwards.


If another user of the fid had gotten the fid from the inode previously,
it has a ref, so the fid will not be actually clunked then but it will
be clunked later when it is done being used -- that is perfectly fine ?

p9_client_clunk should not have to worry about anything in the vfs.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
