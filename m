Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F07BD49EC51
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 21:13:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nDB99-00005Q-66; Thu, 27 Jan 2022 20:13:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lionkov@gmail.com>) id 1nDB95-00005I-Tz
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 20:13:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yyaRPtT8kN4pN/L2JmnCqcaTIsdtIxm5jpn+IN2RFlo=; b=HXKk/LKEjcJlnf7T+7DXlOpcpb
 XrvPR90r1OE2OJxa9krk6AEp3VX8BGP25gelyVRk/6LWZ97jsIbn1tMQSssVrTVo0V94S0swl+X3b
 SCJ61AxlQuloUobR9MRrDEjY9zuomihLubexFTBpYCfY76XjKiE8mDzt/EJsPTPy6F6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yyaRPtT8kN4pN/L2JmnCqcaTIsdtIxm5jpn+IN2RFlo=; b=ErTEgd9h2UTDjHgY30AfV6MYlc
 MfOtkGTPU6fTytnQn5TnaOqxmYlzGT0Up6hYeLRH6q6G7qYCYB0LA7LGxQ4QkA+bjepHIwzo0TwOT
 UyU2QzOe3gw7iU9+xV/gySmhgOlaqX+QYYMfhpb1PHIDfBVljo4ZONgyXdjLbRUDSFy8=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nDB93-0005CO-64
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 20:13:26 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 q141-20020a1ca793000000b00347b48dfb53so2612653wme.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 27 Jan 2022 12:13:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yyaRPtT8kN4pN/L2JmnCqcaTIsdtIxm5jpn+IN2RFlo=;
 b=Tr7fN3Dk4fVUNt64l+5J6etCdWi0e5AFrHgZwzBXzSuKT+aYaMdy/Ey+OvEycPfgbc
 DSEcmey9+/mgs+FkBfF4tZvGNkk1gpSPKkT3yQiZ+5GVc/3d7V19K9TCN7JQNlMd1CeV
 3H24nJ08Pw9PhAQwem/iSMirBobchJBXZT2Ahd6/WYqDOyHTgcu3shehk6OOVVnCFlyf
 4isUHFXQeZ25HpwW8q/xF69pjzTF90KjEiBjvjYGACC/5D76oe9C2Te4hYFcgChWbKK7
 UG5SUBHILwjmKZXZL6jwm5KUHu/d79HVX2CaVu3Ckwib+gBlFWObCXib4HUFnqcSKNrg
 3hRw==
X-Gm-Message-State: AOAM5323+9Bbof+D2OQfxpMpIJakyFjWvYxv7Hp0JvG84XdHQMHh0SLs
 Jjbhgi/RHwEHO8f9Pci+MSX2n4Isz5izLuwiTxI=
X-Google-Smtp-Source: ABdhPJz3FjSDIQzVgO7/C8nczHPar9j4zS3d8cyDvUOTkAqSgNjGVg5d1kaUQKgMyZ/LFIMVadt7SU1JT9udhaI+mj8=
X-Received: by 2002:a1c:f404:: with SMTP id z4mr13224973wma.165.1643314398603; 
 Thu, 27 Jan 2022 12:13:18 -0800 (PST)
MIME-Version: 1.0
References: <CAFkjPTne8PxxAd=gQ-LYYkRmwz+uhbqYtNzZiTkvL8ANHyZMbA@mail.gmail.com>
 <CAP6exYKZqJpfR+Tr3CwJrNE2Pzd-Fd2gYYW_P+he=ZStbBMHUA@mail.gmail.com>
 <YfIuBlKzYasIhtxf@codewreck.org>
In-Reply-To: <YfIuBlKzYasIhtxf@codewreck.org>
From: Latchesar Ionkov <lucho@ionkov.net>
Date: Thu, 27 Jan 2022 13:13:07 -0700
Message-ID: <CAOha14wmd61e0GbBY9Dsb7R=dcEmnVvvZe2R-n99iY2hOd9+NA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I have no idea why opened fids should be kept in the list,
 but if you do, you should also make sure you keep the mode they were opened
 too and don't return the ones that you shouldn't be returned in t [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lionkov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nDB93-0005CO-64
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, ron minnich <rminnich@gmail.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I have no idea why opened fids should be kept in the list, but if you
do, you should also make sure you keep the mode they were opened too
and don't return the ones that you shouldn't be returned in that
particular case.

    Lucho

On Wed, Jan 26, 2022 at 10:31 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> ron minnich wrote on Wed, Jan 26, 2022 at 07:34:18PM -0800:
> > Thanks Dominique! That was fast :-)
> >
> > If you can offer a suggestion we might do on the server side, that
> > would handle those earlier kernels in the series, I'm all ears.
>
> Well, it's a bit of a gamble as I don't know if the server has made
> other assumptions about it in the first place, but it looks exactly like
> the code 'ng' has modified to just remove the check in go9p.
>
> For p9 that you linked to earlier the check is pretty much identical, so
> removing the check might let things pass:
> -----
> diff --git a/p9/handlers.go b/p9/handlers.go
> index 53724ad9f2dc..5b59c48ca7bd 100644
> --- a/p9/handlers.go
> +++ b/p9/handlers.go
> @@ -1033,12 +1033,6 @@ func doWalk(cs *connState, ref *fidRef, names []string, getattr bool) (qids []QI
>                 }
>         }
>
> -       // Has it been opened already?
> -       if _, opened := ref.OpenFlags(); opened {
> -               err = linux.EBUSY
> -               return
> -       }
> -
>         // Is this an empty list? Handle specially. We don't actually need to
>         // validate anything since this is always permitted.
>         if len(names) == 0 {
> -----
>
> OTOH there probably is a reason this check is here and I wouldn't
> seriously suggest this without a bit of investigation first. I didn't
> see any difference with the handling of open files wrt refcounting so it
> should be safe in this regard, and the cloned fid will not clone the
> open status so there won't be any problem in that regard either, but
> something else might be wrong.
>
> Either way, it's also good to have a few servers be strict about this
> rule even if they don't strictly need it, as it'll let us know of the
> problem for servers who really need it :-)
> And I'll probably add the check to ganesha as a compile option for
> regression testing when this is all over...
>
>
> Eric Van Hensbergen wrote on Wed, Jan 26, 2022 at 09:40:24PM -0600:
> > I was looking at this earlier, and I couldn't remember under what
> > conditions that fid mixing would even happen.  IIRC, we always clone before
> > an open, so I'm not sure when we do a second open on an already open fid
> > --- perhaps a dup?
>
> That open-unlink-xyz series did introduce quite some changes in that
> regard... We're now keeping a list of all fids related to an inode
> whether they're opened or not, and while Greg's patch was intended to
> have the open fids be used for setattr directly without an extra clone
> (and is required for that!) it's changing the lookup semantics for all
> other lookups and something must have gotten caught in it.
>
> (looking just now, there's at least v9fs_writeback_fid which doesn't
> care a bit:
> ----
> struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
> {
> ...
>         ofid = v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0);
>         fid = clone_fid(ofid);
> ----
> But this got added in the patch after Greg's, so if the bisect didn't
> turn it up then there must be other places involved
> )
>
> I think it's really just as simple as adding an extra option to
> v9fs_fid_find so that users who don't plan on cloning it can get any
> fid, and users who will walk a new fid only get unopened ones,
> but I'll need to take a moment to check callers.
>
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
