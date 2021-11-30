Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 998BD463046
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 10:51:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrznI-0005fK-Aw; Tue, 30 Nov 2021 09:51:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dvyukov@google.com>) id 1mrznH-0005et-79
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xIOshV80nA0cTdngvRmNVo4QVtn3MSZ8wdCwv58vrZM=; b=I8hagP3/g+IoIKBwHlXRiVb44T
 NxxTxg4JyXc+CSNx8csAc3DBH23IgBJR8mqPQZppN7St2A9k8YaCJzrBN2MydlKTcO2euwru+6tBH
 dIiw6X/fICBQpMOXNL/78Pj70Ao9F9G8lDSd3+5enKCmixz5W8iVdsh3CdNzM99OwIQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xIOshV80nA0cTdngvRmNVo4QVtn3MSZ8wdCwv58vrZM=; b=YyoCCNwTE5OukEEtiHKoP6BQCj
 EGIjTbPmrAKwYNqmxSeaEQ51pSiYgc7hr1PYUH+8LKfdwg/YwXDeqo/czN6iEdiukXuPmBc4mrjPl
 G5of/zUDWpjJQoNKAdLm/rdPNZLOF111NLtwmebu4BvrQb3Dsf3CjvO5pq4ilZmMVvpA=;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mrznC-00043T-Bp
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:51:23 +0000
Received: by mail-oi1-f178.google.com with SMTP id r26so40162183oiw.5
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 01:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xIOshV80nA0cTdngvRmNVo4QVtn3MSZ8wdCwv58vrZM=;
 b=YKiRf9rus1L5x+onJqJNngUTexOcMQs1v+sBrrfkqpscRKnQUarMIHfbYWOATUk26v
 CabXupDjm2TFFP/COaewxgdl3iKPOCzMN9lRFTQHilR3kaff0n7fNeWNA0MAqU1x5JKl
 yPJrpN9QDt43LwvJQta+QVekbwyDtfrfoqfdtDRs2PQZUkbTGfDSc3GdWzERYZKew9Mj
 p16tB77is3FuQKaA+alz6cnYpi7BUAh5x5Z/+oP4nxxZn009NO/4Tj+lxHOIsXDSLBE9
 rq3PJHw3jkjfAd4mvMlAfMjzDirnrtA5D3qnt+QiXffJ5y23PVVyKgmdz5nGaHioy2PA
 PAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xIOshV80nA0cTdngvRmNVo4QVtn3MSZ8wdCwv58vrZM=;
 b=iJMlxJdBP0Brktz17SeLbY9DCzGLY6/OZKADPSd96WwsQVDdBWVH6P9Z8f5w983f32
 cJtZZxrbNsf0xZ5vlynBGXAl1+26KzKp7TjG29vUx7shqF4LmR6/Zv4w/MBDfJqFDw5V
 sMq1J/6J6Eb419mbUFje4BUAjmIMg6NlWJ+PJLGGatQiWQG3olu6yitI3MkFlb37rQWb
 qoXf6oYfNYhrtoHYlGJm7wc4n4FBgeq568n+wxDOYvwuShJb+7s8kjKfkfR0X4ETWQLz
 jMRrvsvka1pSL+sdACFdB+L0wjdlEzrWQ0tdTG7xOyeASmeMCUiy1gP3jSVt8O6fSB5y
 rZ4A==
X-Gm-Message-State: AOAM530KXEiGmWHwCYlKJ3tORSXjyM+Qw4EEavQlTMsYA3KpnnrNS1rx
 RmZ+kJfVSaM4vN2Mg+jYxW35ZX0sziNugv4ID+j6aDATenhGDQ==
X-Google-Smtp-Source: ABdhPJxnj+BaAlQMgaEW56w6uX1Y6ZEauFgxAOV2KkdCT4IT4a2FBBQPfhlKyO+4OZpzMo64dCRwBv8nSDue0Rym7WE=
X-Received: by 2002:aca:b843:: with SMTP id i64mr3116723oif.109.1638265406348; 
 Tue, 30 Nov 2021 01:43:26 -0800 (PST)
MIME-Version: 1.0
References: <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org> <20211130074955.GR6514@kadam>
 <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
 <20211130091101.GW18178@kadam>
 <CACT4Y+a2RN-q9os99Ms_T0nJLqaFo6u225PwCON7DqXTdEcj8g@mail.gmail.com>
 <20211130092310.GX18178@kadam>
In-Reply-To: <20211130092310.GX18178@kadam>
Date: Tue, 30 Nov 2021 10:43:14 +0100
Message-ID: <CACT4Y+YLMiMbpgptsikT30jj6-4Nb92StLN-628fn5kV+Q0JLg@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 30 Nov 2021 at 10:23,
 Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > On Tue, Nov 30, 2021 at 10:12:43AM +0100, Dmitry Vyukov wrote:
 > > On Tue, 30 Nov 2021 at 10:11, Dan Carpenter <dan.ca [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.178 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1mrznC-00043T-Bp
Subject: Re: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
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
From: Dmitry Vyukov via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, syzkaller-bugs@googlegroups.com,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 Christian Brauner <christian.brauner@ubuntu.com>, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 30 Nov 2021 at 10:23, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Nov 30, 2021 at 10:12:43AM +0100, Dmitry Vyukov wrote:
> > On Tue, 30 Nov 2021 at 10:11, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > But say you call a function with an uninitialized variable won't that
> > > trigger a warning?  It used to.
> >
> > It won't trigger a warning with KMSAN. It never did.
> >
> > But you mentioned UBSan, maybe you mean some other checks. I don't
> > remember UBSan checking for uninits...
>
> I remember seeing reading this discussion a long time ago but I don't
> remember the details at all...
>
> Anyway, Smatch will warn if you pass unitialized variables to a function
> regardless of whether they are used or not.  Everything else becomes too
> complicated.  If it's really a fast path people will just have to live
> with the warnings.  Passing uninitialized variables deliberately is rare
> and I've only seen it happen once where it made sense.  The rest was
> just fancy pants showing off how complicated you can write code for no
> reason.

What is our job w/o fancy pants? :)
I guess it's less problematic for Smatch b/c it will never treat, say,
a data read from skb buffer as uninit. It's more reasonable to require
not passing uninit data for statically provable cases.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
