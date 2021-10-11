Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C46BC4286CC
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Oct 2021 08:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=woi4qdTBlS0TdbROVSY13+1wDZAuvWbpYThohDEXXR8=; b=Q/YhGUpLeAU+rG+13fUxquNS1S
	YppwmNznukwVeVevTtgrvS/vSOUQ4wQ+B5bNczs42WsUTakANUxTk9i6hbNGiAB6Zg6RYiry/j8Ve
	bOR8veWicrFpV1PDB6Oipa4INl2P33oxQN2c/dsQZPu+8gw6NA5u19OK/U9Vd82+RXq8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZoks-0004Uo-0r; Mon, 11 Oct 2021 06:25:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dvyukov@google.com>) id 1mZokp-0004Uc-Cm
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 06:25:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MCMZjprOoTO3FY4Nz8fWbXma5aFkRInKRgNzdjqncZA=; b=hZ5+s2LzwiUYXnK/KK84eehXnx
 N6S16JPpVogUAaf0+AiGvbyWNGa6PH1AsbQDyeA1Z7PfbuaHEgDjMzn6zh13sLLRr8FHtB75Pdq2L
 kO1KgSnVSABDGZmk6jYGjS7mXG5l9/P8SKIbEiCwozhoxGDDuC40nO6G6ug9JhopXarw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MCMZjprOoTO3FY4Nz8fWbXma5aFkRInKRgNzdjqncZA=; b=YpmHYtBMuE6UatHSVz3r+lq0uD
 zxZphzGXY243OhCbg6Svq8fQm4p5fy51uyv9tPVwcQ1Ot6r+4gBZ3HvyluVA09xOK0HD1pndJ/8zE
 SamOboJmlo8nnVRzXyXWwBDx0qFQZAXzqBM5rPDWI5ayM018bnyADw7ulAjWt5OZm7CQ=;
Received: from mail-ua1-f51.google.com ([209.85.222.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mZoko-0005bO-Mh
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 06:25:43 +0000
Received: by mail-ua1-f51.google.com with SMTP id a2so7356426uaq.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 10 Oct 2021 23:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MCMZjprOoTO3FY4Nz8fWbXma5aFkRInKRgNzdjqncZA=;
 b=H2DkxHxjCwHTlWNcj7RtGx/DxRPxzHwZghfAeje3xwNMr2IfztQNWaSbHta7p1E/1i
 KhmCsa5FwUQYfWC7RBbeSuQZWO62DGXrYPiazxqpUXwkzA1P3cyyJ/VEdNDRtyRVPZ4D
 uiiHRYcvyIsX254t3/TpRkEwqzFgYeY3Du5uizYwt7Q++SiuaQimcXxecPQ5vb3WWV1P
 QOVtboB1pjaKaXfW+yUWGSZw1PL2lRfM/IphFOwHIBbXB8g2C0LUOFMDGJ6k/aq+gQbc
 ygRWuKxaavYRLg6NvKNe860DMSccJZ4qBWq8X77EVjoYsztpIwyson1ZqHpx6hGMjpLS
 8KVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MCMZjprOoTO3FY4Nz8fWbXma5aFkRInKRgNzdjqncZA=;
 b=R4Ec/z+uEv5LBC1oPsFLw+cIj78FNsPxDy+6hReQpruLt2w/AUhkZbbovusF8HQlyK
 qRlbqFz4O6fJYKZGplvqwE4bnO9o/qKmPxrTQTgYHXdUBKtPI6NB/41TZPRuGtAqQdf1
 jj+kunBpTPQo7+CtFZJyP6q4eSSH7y/j/57b31IXZMxShZx0Z4UrnUdqBsOFJOR1IQQ5
 clZ7S+cWfQzjStysGBzZcvXXGZkEDwY8REyj8DqG2PC/u+2CcQrWZOvwpRRfyJh7Z43u
 XzG8R9iywAnvjdMVeyMmqW85+3PjKt0rGRGFQT4zpZ/KaLIg9xp+xxfGvaWifdd2l1mZ
 eDOg==
X-Gm-Message-State: AOAM533OWeKzONjZdp8EZ0N9ogN3vtjLRyC5ojk01uVopK91ioN4NCDc
 6iHeeTmbDoVQO1JoWaxlGQm5S1+0wp/52blmOJMJq/iriGvZwO6V
X-Google-Smtp-Source: ABdhPJylB5lDjs9TmS+U3sBCJ7MOpvTx1gdWY4wcOlXdElGccgyFt0pFSmgzEYoH3F20+7YJZV4ucGOZTZ8aK2M6HyE=
X-Received: by 2002:a05:6830:402c:: with SMTP id
 i12mr5601347ots.319.1633931777032; 
 Sun, 10 Oct 2021 22:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000baddc805cdf928c3@google.com>
 <YWKmBWfBS3oshQ/z@codewreck.org>
In-Reply-To: <YWKmBWfBS3oshQ/z@codewreck.org>
Date: Mon, 11 Oct 2021 07:56:05 +0200
Message-ID: <CACT4Y+bqD=EkkQB6hm+FVWVraDBChnRgqViLTqvmVrVM=1gH+w@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, 10 Oct 2021 at 10:36, <asmadeus@codewreck.org> wrote:
 > > Question for people who know about KMSAN: which of the backtrace or the
 > 'Local variable' message should I trust? Hi Dominique, Both. The first
 is the use of the unit, the second is the origin of the uninit. 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.51 listed in list.dnswl.org]
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
X-Headers-End: 1mZoko-0005bO-Mh
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

On Sun, 10 Oct 2021 at 10:36, <asmadeus@codewreck.org> wrote:
>
> Question for people who know about KMSAN: which of the backtrace or the
> 'Local variable' message should I trust?

Hi Dominique,

Both.
The first is the use of the unit, the second is the origin of the uninit.


> syzbot wrote on Sat, Oct 09, 2021 at 10:48:17PM -0700:
> > =====================================================
> > BUG: KMSAN: uninit-value in p9pdu_vreadf net/9p/protocol.c:147 [inline]
> > BUG: KMSAN: uninit-value in p9pdu_readf+0x46cf/0x4fc0 net/9p/protocol.c:526
> >  p9pdu_vreadf net/9p/protocol.c:147 [inline]
> >  p9pdu_readf+0x46cf/0x4fc0 net/9p/protocol.c:526
> >  p9pdu_vreadf net/9p/protocol.c:198 [inline]
> >  p9pdu_readf+0x2080/0x4fc0 net/9p/protocol.c:526
> >  p9_client_stat+0x2b3/0x710 net/9p/client.c:1724
> >  v9fs_mount+0xc14/0x12c0 fs/9p/vfs_super.c:170
>
> would be 'len' in p9pdu_vreadf, which has to be set as far as I can understand:
> > uint16_t len;
> >
> > errcode = p9pdu_readf(pdu, proto_version,
> >                                 "w", &len);
> > if (errcode)
> >         break;
> >
> > *sptr = kmalloc(len + 1, GFP_NOFS);
>
> with relevant part of p9pdu_readf being:
> > case 'w':{
> >                int16_t *val = va_arg(ap, int16_t *);
> >                __le16 le_val;
> >                if (pdu_read(pdu, &le_val, sizeof(le_val))) {
> >                        errcode = -EFAULT;
> >                        break;
> >                }
> >                *val = le16_to_cpu(le_val);
> >        }
> > ...
> > return errcode;
>
> e.g. either len or errcode should be set...
>
> But:
> > Local variable ----ecode@p9_check_errors created at:
> >  p9_check_errors+0x68/0xb90 net/9p/client.c:506
> >  p9_client_rpc+0xd90/0x1410 net/9p/client.c:801
>
> is something totally different, p9_client_rpc happens before the
> p9pdu_readf call in p9_client_stat, and ecode is local to
> p9_check_errors, I don't see how it could get that far.
>
> Note that inspecting p9_check_errors manually, there is a case where
> ecode is returned (indirectly through err = -ecode) without being
> initialized,

Does this connect both stacks? So the uinit is ecode, is it used in
p9pdu_vreadf? If yes, then that's what KMSAN reported.


> so I will send a patch for that at least, but I have no
> idea if that is what has been reported and it should be trivial to
> reproduce so I do not see why syzbot does not have a reproducer -- it
> retries running the last program that triggered the error before sending
> the report, right?

Yes.

>
> --
> Dominique Martinet | Asmadeus
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/YWKmBWfBS3oshQ/z%40codewreck.org.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
