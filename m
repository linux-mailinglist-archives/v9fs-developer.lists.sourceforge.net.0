Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D267C428719
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Oct 2021 09:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=15KKcUXUupkVzpcUK1GAzgUesBc2YqSO2qRwc9DuTO0=; b=cfEQi1yahzwxFNvzoJWIU3JSx8
	44TaAxRzZ/91spKH//QhXlPF7a8bSYkesEr/hecOCp5PMwKnavUNk3vBGy3+lMQQFNYdIXTyg5J0M
	2h60sGx1KTpYxOKL1b97VDW7pKPCIcjUyjoQ2IeY4/ebcwKsCXkV3BcEMc8DHtA8w8Fw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZpKN-0000x4-8F; Mon, 11 Oct 2021 07:02:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dvyukov@google.com>) id 1mZpKK-0000wa-Db
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 07:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=htZ8t8nOabNnJ9q7wmc+ZN1SdI8BO6B0ETLpwejMQJQ=; b=Da9vSUoOPwL/MVipxN7GAkCmAg
 o9TLRIXhjgiafF38MyPd57twiHEDC1JfM7ic7DdNKJVS9sBZFIvULKIc3lvwS2Upt65e1Oyo3+j6d
 QaIaRylqpebePmbt1ch0F4R7A2t6oVfy24es9B7u8fnRmRjHbo7NavKUC1TurlX5bOJg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=htZ8t8nOabNnJ9q7wmc+ZN1SdI8BO6B0ETLpwejMQJQ=; b=f5f2PFbAyB0cJ+AfBLKwn09hAs
 UfOdPQZdWmtUPsEvQ5Iwt/OKXGFt2/km874q4DilI0Poeaz3kf4nATJtA458h0OhkvaMGL+3SSUud
 B1scVy+m2Sed0O3LZk4+XVBhXQDhSnlYtFRUPbyb9FzZMHR67XwZTVPrUZ9bEU8bn50Q=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mZpKJ-0008UW-OZ
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 07:02:24 +0000
Received: by mail-oi1-f171.google.com with SMTP id t4so21619459oie.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 11 Oct 2021 00:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=htZ8t8nOabNnJ9q7wmc+ZN1SdI8BO6B0ETLpwejMQJQ=;
 b=Y89I0etMroRJHu+6O29FtgB/nkTFwKlivNTsYmUcEb7L9c/KqcAOSbOvXXSyM+3Yun
 t6oT1PaoYH3UOpd5iTpLZXfn8HZJ58j49C9Oh6P9pjSmihFavSPS6jf3jZqAg6qtmce9
 4lgIv4K1sD67+bPMf+xC2d+EJIcO+WuBIj+b6EIvnseEKxlOsqIR3hznkYODSwlY6IJQ
 Dgel9DTXH4b6ClekkAHgV97a3QkWyqbc0YST0ggelL4S3JxoPm5e9oNbcPmuIgNZazaa
 XsBF4Kj1Rv83nPsTp2I76yVGDsie2fuuuo/cQ4G7UFsSqtADarGEofs+UzIaYPonG7ka
 3jYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=htZ8t8nOabNnJ9q7wmc+ZN1SdI8BO6B0ETLpwejMQJQ=;
 b=BtDynWGOlgZv7ELSOcc9f/VrnBo2/hA38UPs/K73TrDEqF43BZVVYMXE7nst3j9YJ1
 wqXPeoampdBNgCY0ajL+QD/Ry+UUk+5wcph1w/aYVyc4cMsbdivrRNKWmSRwLPyvldca
 N6W2I7MhuboGlCwCq4fXUSoVIjYQrKaTe9q+Y0ZqVJKJ5T0lcG+bPjEACR9ogjWH1Yii
 lwAYO+YgailGfthj/bx1JsyRZQ9xKHqsNbU6j3SzNj5g5xsefg8Mmg9LzkBk/EnK3Fiw
 XkoiaiKPsSq2VHiSDWGxdtErOKLEGkaOw0/mOkCsyj4mI+Z9KSDSIoiEH9M2k49ET/mG
 LIhg==
X-Gm-Message-State: AOAM533ykWwNgCvT7RslZz6a8Y3NsP4IWNpF8eKE9Z1z++r0V24xnI8W
 gaLE8Q9sVkhQs+8YGnNLCantig8GgT+tPnw4iK7gZQ==
X-Google-Smtp-Source: ABdhPJxgOUUwpaH4L9dkeU8DWeSQmlFTIVya5t4BKNsCjXY+V1WKx7107AJh5oPHrZ0vDHDYWAkdK3gvJmz21JQwi20=
X-Received: by 2002:aca:f189:: with SMTP id
 p131mr25976776oih.128.1633935737899; 
 Mon, 11 Oct 2021 00:02:17 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000baddc805cdf928c3@google.com>
 <YWKmBWfBS3oshQ/z@codewreck.org>
 <CACT4Y+bqD=EkkQB6hm+FVWVraDBChnRgqViLTqvmVrVM=1gH+w@mail.gmail.com>
 <YWPfl8FFI5uKX499@codewreck.org>
In-Reply-To: <YWPfl8FFI5uKX499@codewreck.org>
Date: Mon, 11 Oct 2021 09:02:06 +0200
Message-ID: <CACT4Y+Y9cSrctQ5gLaCy-13eEz4pxxn=h9wr2xXZTJ6+CUxTtA@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 11 Oct 2021 at 08:54, <asmadeus@codewreck.org> wrote:
 > > Thanks for the reply, > > Dmitry Vyukov wrote on Mon, Oct 11, 2021 at
 07:56:05AM +0200: > > > would be 'len' in p9pdu_vreadf, which ha [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1mZpKJ-0008UW-OZ
Subject: Re: [V9fs-developer] [syzbot] KMSAN: uninit-value in p9pdu_readf
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
Cc: lucho@ionkov.net,
 syzbot <syzbot+06472778c97ed94af66d@syzkaller.appspotmail.com>,
 ericvh@gmail.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, glider@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 11 Oct 2021 at 08:54, <asmadeus@codewreck.org> wrote:
>
> Thanks for the reply,
>
> Dmitry Vyukov wrote on Mon, Oct 11, 2021 at 07:56:05AM +0200:
> > > would be 'len' in p9pdu_vreadf, which has to be set as far as I can understand:
> > > > uint16_t len;
> > > >
> > > > errcode = p9pdu_readf(pdu, proto_version,
> > > >                                 "w", &len);
> > > > if (errcode)
> > > >         break;
> > > >
> > > > *sptr = kmalloc(len + 1, GFP_NOFS);
> > >
> > > with relevant part of p9pdu_readf being:
> > > > case 'w':{
> > > >                int16_t *val = va_arg(ap, int16_t *);
> > > >                __le16 le_val;
> > > >                if (pdu_read(pdu, &le_val, sizeof(le_val))) {
> > > >                        errcode = -EFAULT;
> > > >                        break;
> > > >                }
> > > >                *val = le16_to_cpu(le_val);
> > > >        }
> > > > ...
> > > > return errcode;
> > >
> > > e.g. either len or errcode should be set...
> > >
> > > But:
> > > > Local variable ----ecode@p9_check_errors created at:
> > > >  p9_check_errors+0x68/0xb90 net/9p/client.c:506
> > > >  p9_client_rpc+0xd90/0x1410 net/9p/client.c:801
> > >
> > > is something totally different, p9_client_rpc happens before the
> > > p9pdu_readf call in p9_client_stat, and ecode is local to
> > > p9_check_errors, I don't see how it could get that far.
> > >
> > > Note that inspecting p9_check_errors manually, there is a case where
> > > ecode is returned (indirectly through err = -ecode) without being
> > > initialized,
> >
> > Does this connect both stacks? So the uinit is ecode, is it used in
> > p9pdu_vreadf? If yes, then that's what KMSAN reported.
>
> Hm...
> Assuming that's the uninit, it'd have been propagated as the return
> value as req = p9_client_rpc; passed the IS_ERR(req) check as not an
> error, then passed to p9pdu_readf(&req->rc (later 'pdu')...)
> That would then try to read some undefined address in pdu_read() as
> memcpy(data, &pdu->sdata[pdu->offset], len)
> and returning another undefined value as
> sizeof(__le16) - min(pdu->size - pdu->offset, __le16)
>
> Here magic should happen that makes this neither a success (would set
> *val e.g. len in the kmalloc line that complains) or an error (would set
> errcode e.g. p9pdu_vreadf() would return before reaching that line)
>
> I guess with undefineds anything can happen and this is a valid link?
>
> I would have assumed kmsan checks would fail sooner but I don't see what
> else it could be.

KMSAN tracks propagation of uninits and reports only "uses".
Reporting sooner tends to produce lots of false positives because code
tends to operate/propagate/copy/add uninits, but then discard.


> > > so I will send a patch for that at least, but I have no
> > > idea if that is what has been reported and it should be trivial to
> > > reproduce so I do not see why syzbot does not have a reproducer -- it
> > > retries running the last program that triggered the error before sending
> > > the report, right?
> >
> > Yes.
>
> Ok, I guess there are conditions on the undefined value to reach this
> check down the road, even if the undefined return itself should be
> always reproducible.
>
> Either way Pavel Skripkin reached the same conclusion as me at roughly
> the same time so I'll just go with it.
>
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
