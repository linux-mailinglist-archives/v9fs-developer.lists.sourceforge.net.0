Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D784630F8
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 11:26:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ms0L8-00019D-EU; Tue, 30 Nov 2021 10:26:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dvyukov@google.com>) id 1ms0L5-000192-OV
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 10:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zwIsCRmYr39YjxMvqM9OqLXoPhcZ/3Rcr9b0WRRndHE=; b=V4Yxowfok6r0ZRthzOQASABntt
 33Gwe9xQ5WG2n8xVBmmHTIhWmr49T/a49FNEU7JV6XUnKguv+oyABmaFRqZLEwYK/lQmaa9fgI/J2
 KcatkJU/1G20nSVb6r4i2acHJnT247cTjCKjUa+asIdMcR0LtzIxGNvGuBE4N2cL+YjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zwIsCRmYr39YjxMvqM9OqLXoPhcZ/3Rcr9b0WRRndHE=; b=bbm39vHLbW61YvgCdqQ1ql/eij
 o5wb7YDrFrt8mjp0PZ51EMyy/IvPBJ7BQ80vOJnke4Vx1/q/Fpsud5IsSR8A7GNTY8Ps412T55DD1
 mviHWRHzptz2oxz9TJ/rAxmR/Sx5HcUx+KPioD5baZHf/FNM7J1CggijJMsLVRpBKRE8=;
Received: from mail-yb1-f180.google.com ([209.85.219.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ms0Kz-0007C7-Jb
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 10:26:19 +0000
Received: by mail-yb1-f180.google.com with SMTP id y68so51168894ybe.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 02:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zwIsCRmYr39YjxMvqM9OqLXoPhcZ/3Rcr9b0WRRndHE=;
 b=b0hE+iyFNqHKnFTDq5+dj34Ib3Bwi/EmwE2YNaKL6tr1jj4oUPzrq8odPt5TUkYHPQ
 biVdHE0JIH9Nxvo9YIJQzs9FQFt/+drj24YokUZkGKQob0JlJWdht/yRVvo/IfykScvC
 SzoPCgKmFe9emiB+2WAsBFe+H0Qhn61lGo3SsE52X0GcVbu1FAfuHKw4US//eXTPQiz4
 TY4R0ol1LxbQkllXLPYnjCfHOdlJycp8AoowT73N8oj7G7LGLPlQ4obAO0RW3MM8QQyw
 ch27eQMhdtmnwVCZZXetG5hUiFW2BHWC3QzemCUG6YzsGP2ryedb2juCLZsQreUoGAKE
 b4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zwIsCRmYr39YjxMvqM9OqLXoPhcZ/3Rcr9b0WRRndHE=;
 b=mwa6xT1ukjoLxR7L2q114c5pAfUgH8tct960NGrGkJtwVVWt0QvBB0yexqbC9AnEtj
 fA/liN+kOrzLHK2bK+KWvzPyVs8FtR3ibaWzZPwT1Da1lf27ZhbAtsZoCs1lb2wfHynU
 uDzDr3Gu84LoZPcUOY5NQ24/wAxkRzNxuKdzMcyN5tWJHo4su91Hg7pOE7ueRY4ePUWy
 8i87x3c4R3dX4m3BS7mH2rQ7wQuez7q37TxDAtgmlPyz6ha3EKkju7FIi7Hi4haCRGVd
 LeWPgwX6oTLgsPSSIQGS0GCZm5/cu3l+QX2A19MVC6TEUhzWIRc/zWl28LiEk6Yq/se6
 +dYg==
X-Gm-Message-State: AOAM531WjpbSg/uLTGGa4mxcLmcbXqbmlXSDAmkHSFVEWG8hT6yIIJ/w
 h06kLaV+cRaHTPp5uipVMUSfi+7US0hAXZPz3Ec/Bl2GMy4Fpg==
X-Google-Smtp-Source: ABdhPJw2SkUy2/vhcM4X+hXPSAf7+kY3eibaNbcHn3NQADjECL3tI4WzcHHNLKaCt8yXvri948hB5fG8O5zLAhdQlWQ=
X-Received: by 2002:a4a:d319:: with SMTP id g25mr34749132oos.21.1638263575711; 
 Tue, 30 Nov 2021 01:12:55 -0800 (PST)
MIME-Version: 1.0
References: <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org> <20211130074955.GR6514@kadam>
 <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
 <20211130091101.GW18178@kadam>
In-Reply-To: <20211130091101.GW18178@kadam>
Date: Tue, 30 Nov 2021 10:12:43 +0100
Message-ID: <CACT4Y+a2RN-q9os99Ms_T0nJLqaFo6u225PwCON7DqXTdEcj8g@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 30 Nov 2021 at 10:11,
 Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > On Tue, Nov 30, 2021 at 09:11:33AM +0100, Dmitry Vyukov wrote:
 > > On Tue, 30 Nov 2021 at 08:50, Dan Carpenter <dan.ca [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.180 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.180 listed in wl.mailspike.net]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1ms0Kz-0007C7-Jb
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

On Tue, 30 Nov 2021 at 10:11, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Nov 30, 2021 at 09:11:33AM +0100, Dmitry Vyukov wrote:
> > On Tue, 30 Nov 2021 at 08:50, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet wrote:
> > > > Copying uninitialized value isn't a problem, and is usually faster than
> > > > checking before every copy, it's using uninitialized values later down
> > > > the road that is bad.
> > >
> > > These days more and more stuff like static analysis and UBSan (runtime
> > > checker for syzkaller/syzbot) detects when we copy uninitialized values.
> > > So even when the value is not used, just loading it can trigger a build
> > > or runtime warning.
> >
> > KMSAN won't report loads of unint data (don't know about static analysis).
> > It was a design requirement for MSan. People do it a lot. Even use
> > units in competitions and then discard. KMSAN only reports the final
> > uses of unints (or derived data), if any.
>
> But say you call a function with an uninitialized variable won't that
> trigger a warning?  It used to.

It won't trigger a warning with KMSAN. It never did.

But you mentioned UBSan, maybe you mean some other checks. I don't
remember UBSan checking for uninits...


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
