Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA8C56567A
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 15:06:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8Lml-0004rC-GT; Mon, 04 Jul 2022 13:06:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o8Lmk-0004r6-0W
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:06:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a5TD/6htXeQo+179uY4oIl450HovuI2EhjBmEtecnJY=; b=cGqmOAZNIBAHaoIK7iSIy8x2V/
 QkTPiXfK1WiZSruUKYcAn/Ui/sKqVvC/ulwq3VHDsvoghipuK5G7xXDqKSZoSCwCdPQmzVqFcsmX4
 MILHTDAVTorO5R/MLwPuWhArCp0TOxIOXlsKScAsiIJa4GqFb/p8pof8NhAIHmY8uuw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a5TD/6htXeQo+179uY4oIl450HovuI2EhjBmEtecnJY=; b=FyM+M9IoAVcYx8P2QzHcydL3e8
 d+0Fos0boczymT0MOy4CadQP2fxZkJ7tjRdfIdUJeZZA9NjZYhl09ZDU462iuD46v4r06m+jaxi9P
 0VmlbQ/tmMHJkeVaQZz7Gj5kzold3Bu02klD8cxdVS7hPbn5JVIiiYj3PZ+v9WoolGxM=;
Received: from mail-qk1-f176.google.com ([209.85.222.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8Lmh-0070gq-UT
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 13:06:41 +0000
Received: by mail-qk1-f176.google.com with SMTP id r138so6712727qke.13
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 04 Jul 2022 06:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a5TD/6htXeQo+179uY4oIl450HovuI2EhjBmEtecnJY=;
 b=kktvMRcI30wmbkZvJOiXR2y1iTCUrjLtGc89dbvz23Czi/hMHPDY3bS23bYk2gGF7A
 HWJxXs6ywJC5MwLn4t7Dq3Ekk05VuJ0V1ncNcZQqW7mVIUDoctj4I996PkWAmVfplDGY
 9p4ytipzw9dVOmVHen0I2CkBwQBS3Of+Rf6l7yDbtWLQ+4/0peZ4kqxPF63PZb8Peqsk
 wgVXpHYnw68ExcfwbRp8DQoyW1TeXuzB7RWXVIE2CPGhRKvO6dUnu3KxY53Yo/67PH9R
 Tq/KQZzo/NQcHzntVijRdh0pgIE1dvhBsGW7ogtYVAnapVUJYUYemZx2y3AhnP6LnyNK
 TLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a5TD/6htXeQo+179uY4oIl450HovuI2EhjBmEtecnJY=;
 b=RGnH7VIddfOBk4A1OKXetML45Dp3rE+LTu7RTYlwySE0b51+kCzuJUW0xyLwl90l+C
 w46dYy2TZUiiiwQeaM4W0SyXp3Ehpk2ptshZJm3/mtOJ18HA73lTKDxx7QkJqblPRoKp
 76Yf3FCeTI+SDe8zF5ZXDeVCyoONPUT48bUqwCeE64e+8AgIaEzFy6F/pv22TLiNXIbd
 PgcmsrtACizZeJj5iljnWAZb2d3cUSop6Jm4pxsZrKHVVpvQRqD4AcK2mGtm+qbbvrHr
 8tthxmtm25PrCoy+3jMjqKh0UP0nquFrFs89bEZAB9T13n2RY0lMf5yRl5OnfGYoccNS
 wwpQ==
X-Gm-Message-State: AJIora9Bs/6QXRSUKZFHiNhw5ZOghMGWZEsvNZ4ScUTG+nFgKrzpa2RG
 Czfhe1gw0rn76lbphWuDPw==
X-Google-Smtp-Source: AGRyM1tirL1eMd1wHrMdnOU9GvqHnOm/pOs5+oZ1ihTLoRogwJTDL3MXKdkS22ith2xtGsrpYgXPLQ==
X-Received: by 2002:a05:620a:12c2:b0:6af:474:99b2 with SMTP id
 e2-20020a05620a12c200b006af047499b2mr19006059qkl.402.1656939993836; 
 Mon, 04 Jul 2022 06:06:33 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 j22-20020ac85516000000b0031778b5567asm18506100qtq.63.2022.07.04.06.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Jul 2022 06:06:32 -0700 (PDT)
Date: Mon, 4 Jul 2022 09:06:31 -0400
From: Kent Overstreet <kent.overstreet@gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <20220704130631.eq5txpq62gwvbvts@moria.home.lan>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704030557.fm7xecylcq4z4zkr@moria.home.lan>
 <YsJgxoTyYxX1NwyW@codewreck.org> <2335194.JbyEHpbE5P@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2335194.JbyEHpbE5P@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jul 04, 2022 at 01:12:51PM +0200,
 Christian Schoenebeck
 wrote: > On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
 > > +Christian, sorry I just noticed you weren't in Ccs again - [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.176 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.176 listed in list.dnswl.org]
X-Headers-End: 1o8Lmh-0070gq-UT
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 04, 2022 at 01:12:51PM +0200, Christian Schoenebeck wrote:
> On Montag, 4. Juli 2022 05:38:46 CEST Dominique Martinet wrote:
> > +Christian, sorry I just noticed you weren't in Ccs again --
> > the patches are currently there if you want a look:
> > https://evilpiepirate.org/git/bcachefs.git/log/?h=9p_mempool
> 
> I wonder whether it would make sense to update 9p section in MAINTAINERS to 
> better reflect current reality, at least in a way such that contributors would 
> CC me right away?
> 
> Eric, Latchesar, what do you think?
> 
> > > @@ -270,10 +276,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type,
> > > unsigned int max_size)> 
> > >  	if (!req)
> > >  	
> > >  		return ERR_PTR(-ENOMEM);
> > > 
> > > -	if (p9_fcall_init(c, &req->tc, alloc_msize))
> > > -		goto free_req;
> > > -	if (p9_fcall_init(c, &req->rc, alloc_msize))
> > > -		goto free;
> > > +	p9_fcall_init(c, &req->tc, 0, alloc_msize);
> > > +	p9_fcall_init(c, &req->rc, 1, alloc_msize);
> > 
> > mempool allocation never fails, correct?
> > 
> > (don't think this needs a comment, just making sure here)
> > 
> > This all looks good to me, will queue it up in my -next branch after
> > running some tests next weekend and hopefully submit when 5.20 opens
> > with the code making smaller allocs more common.
> 
> Hoo, Dominique, please hold your horses. I currently can't keep up with 
> reviewing and testing all pending 9p patches right now.
> 
> Personally I would hold these patches back for now. They would make sense on 
> current situation on master, because ATM basically all 9p requests simply 
> allocate exactly 'msize' for any 9p request.

Err, why?

These patches are pretty simple, and they fix a bug that's affecting users right
now (and has been for ages)

> However that's exactly what I was going to address with my already posted 
> patches (relevant patches regarding this issue here being 9..12):
> https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.com/
> And in the cover letter (section "STILL TODO" ... "3.") I was suggesting to 
> subsequently subdivide kmem_cache_alloc() into e.g. 4 allocation size 
> categories? Because that's what my already posted patches do anyway.

Yeah that sounds like you're just reimplementing kmalloc.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
