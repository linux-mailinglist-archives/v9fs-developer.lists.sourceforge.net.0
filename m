Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04613211D98
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Jul 2020 09:57:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jqu5b-0003dk-NF; Thu, 02 Jul 2020 07:56:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jqu5Z-0003dc-V5
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jul 2020 07:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y0tjpFxzWtN77gkqGk4Ekxq65pr5lwbHPItxIq9dvB4=; b=IZIsG0Ggnk3LpeF16yu5sSr5Is
 P+im1Lq3L0/U4SpB2rBPZo+sNP1S9XgTJxAoGN1nzevhYLybS8uaTXqftJZnkPEJKAOmdStHvjLzg
 pyzTydrRuHst+GHbROD0Bv3LVqqckwFmQzSVQz1Wo+d1KHlE2ID51fjyA6ccR2bVbisg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y0tjpFxzWtN77gkqGk4Ekxq65pr5lwbHPItxIq9dvB4=; b=O/6J0WmzRw/9KJlZab+LohX7lP
 ZpdrvOTHClmY+wIo+2qDDNjBvE2Poc60s0tQDzuxXLQRuSxnD/dePHAzVC53tN/oPpTFZ6NBZf/5p
 nZ+Auov4bleSSj8g3afdVT6D8WG/Hn1wlVIXIkDKOAwwIVThkkavW7Ob8ezX4eWmyiBI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jqu5Y-004kdt-0i
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jul 2020 07:56:57 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 46763C021; Thu,  2 Jul 2020 09:56:42 +0200 (CEST)
Date: Thu, 2 Jul 2020 09:56:27 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Message-ID: <20200702075627.GA23996@nautica>
References: <20200701023821.5387-1-jianyong.wu@arm.com>
 <20200701105927.GA20762@nautica>
 <HE1PR0802MB25552E53839BA81FB26210ABF46D0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HE1PR0802MB25552E53839BA81FB26210ABF46D0@HE1PR0802MB2555.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jqu5Y-004kdt-0i
Subject: Re: [V9fs-developer] [PATCH v2] 9p: retrieve fid from file when
 file instance exist.
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
 Wei Chen <Wei.Chen@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 "ericvh@gmail.com" <ericvh@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kaly Xin <Kaly.Xin@arm.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Thu, Jul 02, 2020:
> Yeah, should check fid before "v9fs_fid_lookup", how about
> 
> if (iattr->ia_valid & ATTR_FILE) {
>                 fid = iattr->ia_file->private_data;
>                 WARN_ON(!fid);
>  }
> If (!fid)
> fid = v9fs_fid_lookup(dentry);

Yes, that would be fine.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
