Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A7447075E
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Dec 2021 18:34:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvjmn-00021T-NK; Fri, 10 Dec 2021 17:34:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mvjmm-00021N-Iv
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 17:34:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3QIa6rww9jro5nDJeWJFjVScPd67gpaO9LJRBQi9fOg=; b=SKZFDk/YT4qpvtG8E6qUvKF/Fq
 11jOdOtFzKCg064Y60rFVoKXHxl4wEYA4ubzW81c9VH3IxP+bOG7MV2MTHr/hfUYlsMmRaaE48AAS
 RuMl7xO38lbrNdAMgfUnTarEcYlmBCl8RZFQ8AxxsC8W0ktOhtmdEmtayMq6qE867/Y4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3QIa6rww9jro5nDJeWJFjVScPd67gpaO9LJRBQi9fOg=; b=a6r+N8nupsT4mUHmLGzjvHVdOR
 zPaSvAFbYbkhqQyAcPaFler9GArdKxvjzmedq/+bUKHqLvcK/BV2uiSNfzQ+8n0XibEdKcZ+Vyscz
 4fDrpw1WdLK+jHFRjOsABEzz2Za6Tgz8Sp5JhxEtTT27vnvdcSqTG4QDfogudysCs76M=;
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mvjml-0007wD-RQ
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Dec 2021 17:34:20 +0000
Received: by mail-ed1-f41.google.com with SMTP id r25so31736118edq.7
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Dec 2021 09:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3QIa6rww9jro5nDJeWJFjVScPd67gpaO9LJRBQi9fOg=;
 b=M3iMr1TySf2JhF71PNm9vqUmHaN3ndNQHG/JvqEwurXQFVAc3WLPhhZJWkmxcv/iii
 e3cwFXBPK/cCe5z8o6p2trgcoV9h7Txs5HiF7R/U4M4BIEHcWNhyWg+ifoYKoycIB0+H
 5wF+CXd7RhgARAEG0l0SAd8Fi9xRrg4j8P6mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3QIa6rww9jro5nDJeWJFjVScPd67gpaO9LJRBQi9fOg=;
 b=CngDoagBBai97F8yfinACy3UCmKazRxH+kOd785TeNGXmKMq4frjeUbKv/qaeaBr+e
 +b33H3/Se5RKKgbIm8Y9SoqD5TYF+F0w3KVWyrhxPCwb791jyE6H9Pt9ww0ecWvSoTiE
 wvE4Whv7GIkXNz7Y4MuAi0rhCRVl6K/TNMG7u9jLHva4/j8P8D2RNWycoyuwGRmxrtP1
 StSunLU6VoFOqoh87iGqcTELVelNJbQ1WBL4Zre17zZOhdt6Egj+RZxsSI1RTC/ffxph
 yYFLDyK/6uq8HQ591DmZe3/+79uAXiXIj/zjwH6tvQsJ3vAMe7z+YKauRq7EEPaBpgLz
 lfNA==
X-Gm-Message-State: AOAM533rh4WL3qrZJOyssDJ+G6Xs0tvPuQyJrQTGUuUs+FwfE3opFgUa
 0n8Tn3wnc83PREyTPhkCkaLnCrxEPk6KamLbPy4=
X-Google-Smtp-Source: ABdhPJzigp9xQEXR74zygU5ClVsaf+HKOq1xMUq79bGMPgvFiSn3LZDPewqZQ+8FnfJeoxEqUB1/Tg==
X-Received: by 2002:a05:6402:3549:: with SMTP id
 f9mr42015460edd.23.1639157652687; 
 Fri, 10 Dec 2021 09:34:12 -0800 (PST)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id qb28sm1959124ejc.93.2021.12.10.09.34.11
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Dec 2021 09:34:12 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id d9so16168949wrw.4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Dec 2021 09:34:11 -0800 (PST)
X-Received: by 2002:a5d:54c5:: with SMTP id x5mr15464416wrv.442.1639157651522; 
 Fri, 10 Dec 2021 09:34:11 -0800 (PST)
MIME-Version: 1.0
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906888735.143852.10944614318596881429.stgit@warthog.procyon.org.uk>
 <CAHk-=wiTquFUu-b5ME=rbGEF8r2Vh1TXGfaZZuXyOutVrgRzfw@mail.gmail.com>
 <159180.1639087053@warthog.procyon.org.uk>
 <CAHk-=whtkzB446+hX0zdLsdcUJsJ=8_-0S1mE_R+YurThfUbLA@mail.gmail.com>
 <288398.1639147280@warthog.procyon.org.uk>
In-Reply-To: <288398.1639147280@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 Dec 2021 09:33:55 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiHm-rNkeLXcOt4oV_BMzC5DeZ5FYt+yjbA_GjN2wcd5w@mail.gmail.com>
Message-ID: <CAHk-=wiHm-rNkeLXcOt4oV_BMzC5DeZ5FYt+yjbA_GjN2wcd5w@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Dec 10,
 2021 at 6:41 AM David Howells <dhowells@redhat.com>
 wrote: > > However, since the comparator functions are only used to see if
 they're the > same or different, the attached change make [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.41 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mvjml-0007wD-RQ
Subject: Re: [V9fs-developer] [PATCH v2 07/67] fscache: Implement a hash
 function
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Dec 10, 2021 at 6:41 AM David Howells <dhowells@redhat.com> wrote:
>
> However, since the comparator functions are only used to see if they're the
> same or different, the attached change makes them return bool instead, no
> cast or subtraction required.

Ok, thanks, that resolves my worries.

Which is not to say it all works - I obviously only scanned the
patches rather than testing anything.

                Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
