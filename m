Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4763F992F
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Aug 2021 14:49:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mJbJ0-0005Iv-85; Fri, 27 Aug 2021 12:49:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <marc.c.dionne@gmail.com>) id 1mJbIy-0005Ik-Au
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 12:49:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6BL24id7m8wPcedNjNI4ZZt0Go13BjZ8iUQt2C7HOss=; b=LLv6zbWO/JH17xMKy8ROm2w1zY
 DwsK+oey2qGrU6VpP/WHV/ElrU3R2tonlxt6X/0FNdZZopvHjL76ZYJkHXX0Bd8xLBG5jhA2QUEbD
 ctE/QudfESnlf7ZuDHupR+cf6Xalm87n7I2DENbvmKrPwm/1tWEErK8LYBjBaQDw31jM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6BL24id7m8wPcedNjNI4ZZt0Go13BjZ8iUQt2C7HOss=; b=TDxOUuRT6K67NaigyofYxt6NKT
 AvMzFWDkaCpoZU9qwASEjf10K/FrJYYMgyRk6gpNT5F9tL5NZBDI4zdmFFfHfzPF5nBocdHmR5k+D
 6SGv7afBs/1fg7q6deTI6DvYj1omD7tBQ+qwAImrEI6mOsY9os9Dy3+mHUZrropz8heg=;
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mJbIw-0008B7-R5
 for v9fs-developer@lists.sourceforge.net; Fri, 27 Aug 2021 12:49:56 +0000
Received: by mail-ej1-f42.google.com with SMTP id ia27so13559651ejc.10
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 27 Aug 2021 05:49:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6BL24id7m8wPcedNjNI4ZZt0Go13BjZ8iUQt2C7HOss=;
 b=EcD7AnoscXY2gEB1pobXmiG+ggmgn6ORqOCaL5PGtAYv0XPrJT+LPDZxiH2+DwCYut
 IibqO4G9weli/D+ueXBiWfczt9d20nnAtf53CmG/fLhtaLoL1vYR0dGTlxm7PPPF1TAj
 vYukMnZQ+D45wA5SJClHDpodjGPFEuR7NGhr1ljipX6cFTuX1Ol7P212FrocrsKDqQWO
 DFYEcZKG6FWoMcSgclOq62P9aFqbWwEmd7cFiRkH79ukk9ildPXP2f50NZvSY2ZFn7m7
 k8ftAWllj7v/h45gYunaqXFslDP/rLp5lusTrwWfas/iGGbnuDyvCYSxw/m4NiJHv3K+
 cWmg==
X-Gm-Message-State: AOAM531z2vOg9+wQKdGy8+6c+9OuYPtkGKtTrkJ/U+SQowGAaB+BVBu/
 vPoX47ArA6JmOJUFzFUZ08B5gkWZ2D1EiHAU
X-Google-Smtp-Source: ABdhPJxdO3/TVdLI6HrUreELiJNp9yIuMeJvAM5gLb1KRUzROd5+rn/LTNriNsyhNaIADCuATB8sjg==
X-Received: by 2002:a17:906:3159:: with SMTP id
 e25mr9855436eje.549.1630068588166; 
 Fri, 27 Aug 2021 05:49:48 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id t1sm3448654edq.31.2021.08.27.05.49.47
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Aug 2021 05:49:47 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id
 x2-20020a1c7c02000000b002e6f1f69a1eso9136086wmc.5
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 27 Aug 2021 05:49:47 -0700 (PDT)
X-Received: by 2002:a05:600c:35c1:: with SMTP id
 r1mr8646060wmq.101.1630068587111; 
 Fri, 27 Aug 2021 05:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
 <162431193544.2908479.17556704572948300790.stgit@warthog.procyon.org.uk>
 <2512396.1630067489@warthog.procyon.org.uk>
In-Reply-To: <2512396.1630067489@warthog.procyon.org.uk>
From: Marc Dionne <marc.dionne@auristor.com>
Date: Fri, 27 Aug 2021 09:49:35 -0300
X-Gmail-Original-Message-ID: <CAB9dFdufkVyqS4NadbqVrtjmciLvpuAZOU8woWWcURcnuaZ=GA@mail.gmail.com>
Message-ID: <CAB9dFdufkVyqS4NadbqVrtjmciLvpuAZOU8woWWcURcnuaZ=GA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: auristor.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (marc.c.dionne[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.42 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1mJbIw-0008B7-R5
Subject: Re: [V9fs-developer] [Linux-cachefs] [PATCH v2 04/12] fscache: Add
 a cookie debug ID and use that in traces
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Aug 27, 2021 at 9:31 AM David Howells <dhowells@redhat.com> wrote:
>
>
> Add a cookie debug ID and use that in traces and in procfiles rather than
> displaying the (hashed) pointer to the cookie.  This is easier to correlate
> and we don't lose anything when interpreting oops output since that shows
> unhashed addresses and registers that aren't comparable to the hashed
> values.
>
> Changes:
>
> ver #2:
>  - Fix the fscache_op tracepoint to handle a NULL cookie pointer.
>
> Signed-off-by: David Howells <dhowells@redhat.com>
> Reviewed-by: Jeff Layton <jlayton@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/158861210988.340223.11688464116498247790.stgit@warthog.procyon.org.uk/ # rfc
> Link: https://lore.kernel.org/r/159465769844.1376105.14119502774019865432.stgit@warthog.procyon.org.uk/
> Link: https://lore.kernel.org/r/160588459097.3465195.1273313637721852165.stgit@warthog.procyon.org.uk/ # rfc
> Link: https://lore.kernel.org/r/162431193544.2908479.17556704572948300790.stgit@warthog.procyon.org.uk/

Reviewed-by: Marc Dionne <marc.dionne@auristor.com>

Marc


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
