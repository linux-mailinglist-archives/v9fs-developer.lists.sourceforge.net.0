Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0C04214B8
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Oct 2021 19:03:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mXRNO-0000zV-V9; Mon, 04 Oct 2021 17:03:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mXRNN-0000zG-Ch
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Oct 2021 17:03:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4nD/CqNzR9E4HGpSddngZ7NQXINMID609Z0nuYAzxVQ=; b=Qc7PFBw7cWQtcE3y3svtx16oX6
 k7vVXbEMvbIMGFVcECiUBR464V9lSE0dWH1NAocn7ooDaAE1Hl6ZcAUhqFP4A2Hsjo4ziAv/7G+sq
 9OI5R+OLAbFXAxreXozjrIPcXlXl9PSywUHAye97J6POELMTYE0FBlfyyG7PX7vD72ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4nD/CqNzR9E4HGpSddngZ7NQXINMID609Z0nuYAzxVQ=; b=NQ5SEl7xzUo3sK2Tlg32yhZSsM
 TTYLqIqc+hfn2ibEhYP3t3jKUw3BRV/YgIc4nl1XPIgJH6hEcdT2s4maArUo33L0gi9DVtVwxv2M5
 ImVwfEAy9fQAGm8t1rGM9Gmf/MtXfOiV8Y1xuOx9tD4cHK+799Wis3QIzw8vR34r4dxI=;
Received: from mail-qt1-f173.google.com ([209.85.160.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXRNL-004x9m-BU
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Oct 2021 17:03:41 +0000
Received: by mail-qt1-f173.google.com with SMTP id l13so16539213qtv.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 10:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4nD/CqNzR9E4HGpSddngZ7NQXINMID609Z0nuYAzxVQ=;
 b=EhHEBOBGv3jAdd0eEwTEevENTAb2AhyLvwesYd92iZLWqj7mTTdpBBgs4KL47AQ0oH
 ZwglecIE1krknfq1btMK26sMK70sIco+nuL8EtgDkDN9ePohB2tzfYyBZi//yhabNZMZ
 QP2aeujeABcZR46+NAT9doCWdbaRbYrX5zVHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4nD/CqNzR9E4HGpSddngZ7NQXINMID609Z0nuYAzxVQ=;
 b=UybSA9ckFiykbAw0wthrjUyo+V7ywJxyXAGN2sYHuSWMwqEZwXegG/vQ+iSWI53cCt
 ONgvhXx9QaMirgPaE6BGiB9rsduGpIhgQ6g6WZhsw46ygOVXTcKE9ptSx9ODhrSWCQyH
 q7E+lsGXmvqQ7oMlBFIzraYjZDFh37vxcdqFlN5I/+7jyCp87IT1u2tYnnpeLwVs9i87
 Iil3YBF+TUM4nVcdszr4AfacD2e0chsSMvYqF2Fq6Ux9U1A+4gu3nRmbU2mQPU1Uuz/a
 bY97nnniTaXQwGm7yljhF6s3E5jg+EaHjV3dCj+Vz9Sfhzq9SiFoJqVgHpJYJQIyH3kl
 dsLQ==
X-Gm-Message-State: AOAM530EHTIzq6ESnU1M6yA0P61chjmtWTx9FBAdqhv4PgchMBESzW2t
 ycHEv3tT6ox/wrEeAGq0feawWlwmqqqjYK3l
X-Google-Smtp-Source: ABdhPJw+Au72TCtizWm1KMHYm4/CsRGZ05yACYggHbaA8k12TywF+j+PVVXkC0peT4yAtjP4c+PN5Q==
X-Received: by 2002:ac8:40dd:: with SMTP id f29mr14770766qtm.266.1633365530311; 
 Mon, 04 Oct 2021 09:38:50 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com.
 [209.85.167.50])
 by smtp.gmail.com with ESMTPSA id w7sm9339841qtc.29.2021.10.04.09.38.49
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Oct 2021 09:38:50 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id u18so74384147lfd.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 09:38:49 -0700 (PDT)
X-Received: by 2002:a2e:1510:: with SMTP id s16mr16602800ljd.56.1633365528411; 
 Mon, 04 Oct 2021 09:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <270324.1633342386@warthog.procyon.org.uk>
In-Reply-To: <270324.1633342386@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 4 Oct 2021 09:38:32 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj-ANpwDnAJ0HAdbwyti7Z6aBBJT6JEbkta9VjaF30Tcw@mail.gmail.com>
Message-ID: <CAHk-=wj-ANpwDnAJ0HAdbwyti7Z6aBBJT6JEbkta9VjaF30Tcw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 4,
 2021 at 3:13 AM David Howells <dhowells@redhat.com>
 wrote: > > Do you want patches that quash warnings from W=1 For W=1? No.
 The kerneldoc ones might be ok, but actual code fixes have historically been
 problematic because W=1 sometimes warns for perfectly good code (and then
 people "fix" it to not warn, and introduce actual [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mXRNL-004x9m-BU
Subject: Re: [V9fs-developer] Do you want warning quashing patches at this
 point in the cycle?
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
Cc: "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Oct 4, 2021 at 3:13 AM David Howells <dhowells@redhat.com> wrote:
>
> Do you want patches that quash warnings from W=1

For W=1? No.

The kerneldoc ones might be ok, but actual code fixes have
historically been problematic because W=1 sometimes warns for
perfectly good code (and then people "fix" it to not warn, and
introduce actual bugs).

           Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
