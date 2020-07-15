Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A54220E42
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jul 2020 15:36:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvhZy-0004xs-SL; Wed, 15 Jul 2020 13:36:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jvhZw-0004wv-CR
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 13:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7k2ZM1RQuukbyRC2Gnu8pLYqvDG2r7RUM6L3oMu8c3k=; b=YkRwY8nhgsEaTBcggtZWpNl1YI
 occB/vhxn87YEfv8I1jelF7e3kOotaWvytYs8cJ9nacuQSdF7xRtSXRk9Srf2D4bPtaJiRaa+uC0Q
 SZLHFW3xGLAo11lLzxh+LgV7TYM1TWlB/to07zXI4XWi4G4/LzRwPBeTaQOvaGR+rZWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7k2ZM1RQuukbyRC2Gnu8pLYqvDG2r7RUM6L3oMu8c3k=; b=Z
 mLwhgNZ0Zl/UcLhOeenqF26LEqHCsXkL+dC4fKf3+GLTJuk07EW4KHb0ceMilMjPHbjzHCCNhJNXC
 M0kQrRlRV2L3lxuidyNC3B+IvXcs0545JyPD2J3scrD/gHX9NJAgL7F8NudzyueiKjUE+ME7HaphM
 3GkhBGoxse2GmgCg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvhZt-004VQo-RZ
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 13:36:08 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id C406EC01B; Wed, 15 Jul 2020 15:35:56 +0200 (CEST)
Date: Wed, 15 Jul 2020 15:35:41 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Victor Hsieh <victorhsieh@google.com>, Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20200715133541.GA22828@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715080358.GA2521386@kroah.com>
 <CAFCauYPo_3ztwbbexEJvdfDFCZgiake1L32cTc_Y_p4bDLr7zg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FAKE_REPLY_C           No description available.
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvhZt-004VQo-RZ
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Fix TCREATE's fid in protocol
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Eric Biggers <ebiggers@kernel.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Victor Hsieh wrote on Tue, Jul 14, 2020:
> Please disregard this patch.  I misunderstood the protocol and have
> found the actual problem in the hypervisor's 9P implementation.  Sorry
> about the noise.

Ok, thanks for the notice.

Greg KH wrote on Wed, Jul 15, 2020:
> As Eric says, this is fine to cc: stable with this kind of thing.  It's
> good to get a "heads up" on patches that are coming, and Sasha runs some
> tests on them as well to make sure that they really are going to apply
> to what trees you think they should apply to.

Hmm, I'm really not sure how useful that is for first version of a patch
that actually got refused ;)
But if you both say it doesn't hurt I won't advise against it anymore,
thanks for correcting me.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
