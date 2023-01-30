Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAC06817DA
	for <lists+v9fs-developer@lfdr.de>; Mon, 30 Jan 2023 18:39:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMY8E-0006jq-Ed;
	Mon, 30 Jan 2023 17:39:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pMY8D-0006jj-42
 for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 17:39:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J0/sBuyLKL6CgwLt3Y5H6cHm1A3aj50Sj02FjsijrZM=; b=FbisY62RcWC91iC18fjfTUWzk+
 ZYjy5iBq/eC5PF2M8qtOMVq9fsHA35nI4RG2w20qoNUjN0G1WK63Z+vXr1jqfxgIfxxIxvq9tcU7K
 YYMQ4+XsZZDOYekiqdyqhJu3EAZ/fxuzfRdESXPXUriwmSoTTIyn+qETMwyMkxnZ5TQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J0/sBuyLKL6CgwLt3Y5H6cHm1A3aj50Sj02FjsijrZM=; b=GvEe8ZucJjGbTo6Gh51EFWlYh+
 ja5qOK+ZMwp01eWCstJONpHNB4ye8Xp5z9QEnpxGN/XndHhfmFbOLr21WtLLE7T1ne4R1P1qR1L/V
 ewEJRo6SGXelqj5+2CI0ju9iZRTkTIyfAuaFlO5xlRYouojM5YXJ2wcKcdbSOo38HpRs=;
Received: from mail-qk1-f170.google.com ([209.85.222.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pMY86-0006vn-EU for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 17:39:48 +0000
Received: by mail-qk1-f170.google.com with SMTP id j22so1298009qka.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 30 Jan 2023 09:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=J0/sBuyLKL6CgwLt3Y5H6cHm1A3aj50Sj02FjsijrZM=;
 b=ejjll+0uVQmS4AjWk3xKqTVVixmAQ05wYM4LNBoMyXDLnnQGzPY6gIsTjrRUCEdxJW
 8SFXyecrWQc1rQptqGgukVGVNvkqGwDFA9pBRsuw5+wBdmUyGGNpaJPwK+O0nrbQlurO
 pcc0dkLUZL76a6A36Hv/vEhSnbCrwDLaIvIiq4W2CeKnKQQeKsn+h9Ol0rSAAra+2IDG
 YxiNahUGeFl0pzWMKIOFForWpvIQ3qo0/oAOODxcpJU8+MlFKFkBy9tbc9xCxbB4RCI8
 CG0zgqWeIkYGjEEPafKWx4ES/Ffml09lYcXVuRtQW2+aPCTq0/8SOdWscipXWgUZ1fAM
 YA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=J0/sBuyLKL6CgwLt3Y5H6cHm1A3aj50Sj02FjsijrZM=;
 b=vLQ6ZuX6Wugk/0MhHPjLYjDD9uHzl9PGNO7G9NqK2uLBQ7hebFUziK9Ve2zYYCWPM1
 6Z2pdrJ5qZh1RVmWAjNGb6bbR3y2numTNs2iC1Tqz7O3XnXHFPsfVpFuZL45TLZ/ubt4
 lvy/YoRwrDbqcSRYWxXYbCAMgwW/cJ8mXa+vqd97nbzXP0IhV1OHL5adwd6MF+52bHTo
 TAiOlI/21m1CcPXmh8YHbJvhDzUDhJWVZPblDZdkz8j0Lx9Wndh1msPpi/doF4Wrzcet
 RDj4ZPb0CN7W1P8OVE4Lg5RX25ucWH1JRlpMsv5olyQg4vCOoWFDbgF7JseSaqZOdubm
 pmfg==
X-Gm-Message-State: AFqh2koSSsOm8guWzNc6hp8F6jSDSj9g3X0zo9j8hURUcic7krIgh/Fo
 /t7BbcRVbwK0/3B2c8s2/pY4ZjX1/8JxeeVP3dR2tS6eNiw=
X-Google-Smtp-Source: AMrXdXsPE+n0Oj0OcT9LE7eoTunXp/klq7zqb8POva63HppuUpik+m5+zND8iahyPLWD7T0N0Fd36UG8wD8XEzbp/Uc=
X-Received: by 2002:a05:620a:1987:b0:6fe:d663:60a7 with SMTP id
 bm7-20020a05620a198700b006fed66360a7mr2704915qkb.310.1675100377083; Mon, 30
 Jan 2023 09:39:37 -0800 (PST)
MIME-Version: 1.0
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
In-Reply-To: <4478705.9R3AOq7agI@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 30 Jan 2023 11:39:25 -0600
Message-ID: <CAFkjPTm3xbUpVJG=LLfxH4jMMdbg-5jHYtJtv23UC6karBTL=g@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>, 
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian (and others), I'm looking at revamping my automated
 regression tests (and maybe embedding them in github actions, but starting
 local) for 9p. Right now I'm looking at the diod tests as they seem to be
 the most comp [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.170 listed in list.dnswl.org]
X-Headers-End: 1pMY86-0006vn-EU
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian (and others),

I'm looking at revamping my automated regression tests (and maybe
embedding them in github actions, but starting local) for 9p.  Right
now I'm looking at the diod tests as they seem to be the most
comprehensive tests for 9P2000.L, ultimately I'm gonna see about
trying to incorporate a minimal set for 9p2000 and 9p2000.u as well.
Do you know if there are pre-existing regression tests for 9p in qemu
that I should try and leverage as part of this?

      -eric

On Mon, Jan 23, 2023 at 11:36 AM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> On Monday, December 19, 2022 12:22:07 AM CET Eric Van Hensbergen wrote:
> > This is the second version of a patch series which adds a number
> > of features to improve read/write performance in the 9p filesystem.
> > Mostly it focuses on fixing caching to help utilize the recently
> > increased MSIZE limits and also fixes some problematic behavior
> > within the writeback code.
> >
> > Altogether, these show roughly 10x speed increases on simple
> > file transfers.  Future patch sets will improve cache consistency
> > and directory caching.
> >
> > These patches are also available on github:
> > https://github.com/v9fs/linux/tree/ericvh/9p-next
> >
> > Tested against qemu, cpu, and diod with fsx, dbench, and some
> > simple benchmarks.
> >
> > Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
>
> Hi Eric,
>
> what's your plan on this series? I just had a look at your github repo and saw
> there is a lot of stuff marked as WIP.
>
> Best regards,
> Christian Schoenebeck
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
