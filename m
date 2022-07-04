Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17876564C36
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 05:53:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8D91-0007d2-Q4; Mon, 04 Jul 2022 03:53:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o8D90-0007cw-A7
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 03:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ReHBI0i6XEGWXYdKi3FdtC2T+uu+55nJ5gKrr+JYE7U=; b=Y6r2TDiWD0Lh3mVX4mYCyzdkYi
 o7tb4N2aj2fAo2UnRE+P03h0bmLYr03h66ztBEhHihGoklWHKQueHYxKnZDnKIlgu0EOAEpc2Esta
 lC3OzV70rOr5SsIfJ+p7ch3RSRrcLqcYtOhoXpkEzpyyG4J1LCnM/REQ1uRUat87HVxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ReHBI0i6XEGWXYdKi3FdtC2T+uu+55nJ5gKrr+JYE7U=; b=B+1X8Ff2iDzm3p8LYzj2idV2HF
 QLxoYvlQChovmv0tGtAoIOafRuL1Z0Cwfzsg2uNcF14TiOY/4xNzICtATgPY7PybgxNCzGsspxJAg
 +g9hXx+hUrCbLI+OFz4rjdhvXI+V4xyJTyFkh6Vt4h3S84YcOiWKWgmr0/w2H/HViJJg=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8D90-0002nI-DC
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 03:53:06 +0000
Received: by mail-qt1-f182.google.com with SMTP id x1so8362620qtv.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 03 Jul 2022 20:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ReHBI0i6XEGWXYdKi3FdtC2T+uu+55nJ5gKrr+JYE7U=;
 b=L5/DhAPhVYQpWXpZmYSTMLg3B8DN7q1zLmomaB2Bhwy9W1wH4ft6XYIkaaIGH/aPZ8
 CNj6SuVCv1FjCsNwIJbmTg+S3oFPKXTgNe+JZJiGrBJ0cNfcB2VIDLVJwpdI+9/eH9wE
 5ZLvQhdViz0o9pZXtyI6jHyOgx8CUj1+YWbeRGuT4Uwz303vOo2o3iWDGgBGQoPDWWoK
 I4ODqbWUjH1hop5i1eLMqF+MjIBoCm+vnrYjK8JRL3rVXcoLnVme3xvCoQOwlU9/9Esn
 iMyagxkpHkLlIR5UTu1kDvsRNbib28SiewmfJtPvFm6HYt+RkH1x4zOsL5oqU6i7T9oh
 0Plg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ReHBI0i6XEGWXYdKi3FdtC2T+uu+55nJ5gKrr+JYE7U=;
 b=ZFg3p8pEvLtWvihD/fdYfDMDopGKA5mhjFMaqBYuIAqwoThJ6EO/2TFgZRQeiCrJuD
 TgIjw7ZPJdfd00Z0ue/sQBoXsCaQ70SfIpxG1HdnZPDOduPOC4ohepcxOX0I/WNSeoSf
 BkDyy/KWc9Ps8WXWi7ejcHhl/Zr+emrEma9URI098q+7mc600if9w1WZr39Fwcrd4jI7
 fOzBVAKz7QVnbEAFwnmqg74jtkao5yWqz6lEXsRjKcBXK+6RGglKG7dkoCTbXZj3YTys
 JJaKZ4G9R/2WulToozqGlaHOymobgxljSzYUYN8JQr8MGBSaEipvu+CpNQZhM6mOLetz
 9pLw==
X-Gm-Message-State: AJIora+tNq8vyaDo3vSI1vFGaKuOj30dR4c/qLodQACi38IO3HT5kxvU
 3GGBSBJ1BkbUtcGm+rKN8Q==
X-Google-Smtp-Source: AGRyM1voovHVUyj0oOK3ITyRsReLPseI/AshNcqSgSxu5ujJgMhcudDDJNvhpgfVa4MhJFJ9kQQQHg==
X-Received: by 2002:ad4:5bc2:0:b0:470:4c7d:db56 with SMTP id
 t2-20020ad45bc2000000b004704c7ddb56mr25877358qvt.90.1656906780622; 
 Sun, 03 Jul 2022 20:53:00 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 s13-20020a05620a0bcd00b006addb0af23asm21469536qki.78.2022.07.03.20.52.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jul 2022 20:52:59 -0700 (PDT)
Date: Sun, 3 Jul 2022 23:52:58 -0400
From: Kent Overstreet <kent.overstreet@gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220704035258.yu7k6sras2eiywsp@moria.home.lan>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <20220704014243.153050-1-kent.overstreet@gmail.com>
 <20220704014243.153050-3-kent.overstreet@gmail.com>
 <YsJO8gJeRwf96yTi@codewreck.org>
 <20220704030557.fm7xecylcq4z4zkr@moria.home.lan>
 <YsJgxoTyYxX1NwyW@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsJgxoTyYxX1NwyW@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jul 04, 2022 at 12:38:46PM +0900, Dominique Martinet
 wrote: > > @@ -270,10 +276,8 @@ p9_tag_alloc(struct p9_client *c, int8_t
 type, unsigned int max_size) > > if (!req) > > return ERR_PTR(-ENO [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o8D90-0002nI-DC
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
 v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 04, 2022 at 12:38:46PM +0900, Dominique Martinet wrote:
> > @@ -270,10 +276,8 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
> >  	if (!req)
> >  		return ERR_PTR(-ENOMEM);
> >  
> > -	if (p9_fcall_init(c, &req->tc, alloc_msize))
> > -		goto free_req;
> > -	if (p9_fcall_init(c, &req->rc, alloc_msize))
> > -		goto free;
> > +	p9_fcall_init(c, &req->tc, 0, alloc_msize);
> > +	p9_fcall_init(c, &req->rc, 1, alloc_msize);
> 
> 
> mempool allocation never fails, correct?
> 
> (don't think this needs a comment, just making sure here)

As long as GFP_WAIT is included, yes

> This all looks good to me, will queue it up in my -next branch after
> running some tests next weekend and hopefully submit when 5.20 opens
> with the code making smaller allocs more common.

Sounds good!


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
