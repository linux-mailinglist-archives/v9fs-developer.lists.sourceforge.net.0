Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD53F693B88
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 02:00:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRND6-0006Ek-V4;
	Mon, 13 Feb 2023 01:00:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pRND5-0006Ee-6V
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 01:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=06COdPRnG+39m66zuzkhdsZ8XyyXnmKdKi6XGpOB7fE=; b=F042+uyDHbxy68i/cYYnfYKNjg
 wk+vhBaRPFHSOqk8zjVq55aFHuNwf2W15auhdixg9Jb8su/1cQSN96KEvRZcjBdGjprLZqu8W0K60
 c/g0aedq7VeREn4kXcikLIhSN7PeuiucBTVCSoYDuD3ZRrw1uVhZVqKVJrRX9UVvvDYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=06COdPRnG+39m66zuzkhdsZ8XyyXnmKdKi6XGpOB7fE=; b=FtyckUuNoPwOiDWFs0AvqHSBlx
 HIXKrKXeFyb+QChGx0MftRdx3FzefbBifRc7RB6ZLYMmILjiJzsAaxkZyD9NEF1hyJMAk7oov1nF1
 mELURrDzJbo1Hld9sWM4hmc+nRo4lvMk9JYyfxzHrqglWjN9YHeNVNcy4Ao4zVYIKh0s=;
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pRND2-002GnI-K4 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 01:00:46 +0000
Received: by mail-wm1-f42.google.com with SMTP id
 k8-20020a05600c1c8800b003dc57ea0dfeso10209092wms.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 12 Feb 2023 17:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=06COdPRnG+39m66zuzkhdsZ8XyyXnmKdKi6XGpOB7fE=;
 b=htyie5G3y35TAj9a+ugbREIVaGH1gvLSInh3P5ZzkSbrKQnrOjA0vYl4uoLM46UyyN
 E8703FmuurRxiNFkDZxD6AQGZGUEo8AKucRNq3FWkDTtaVpYbnF8qo+2x2vBKHU4vMlW
 VjvNjtXZHTUxA49Cwo3HzePDXYlI4xIWz5GlQUzgFIOojpiiX01dvGEaTHiAk6SDULsz
 ARDp2CKRJhDDWLcvMu0SyfO+A1Q0uueU3w1mOeQ1YUEWHJq9QnEeI95gFXHYjhPkaESu
 GXtXr7IjUKp3yWFzsa5aJBLpWNMRCa/VNdfK1W5EfYMhSZaNOKJxBs4iyZPXfXI0cv/S
 bYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=06COdPRnG+39m66zuzkhdsZ8XyyXnmKdKi6XGpOB7fE=;
 b=VkcIH7ypUQFq1ChFKRGboTMLsncGHh76e11jCWVh1mxx4Fg2RODp9qIX2hlOZPDWaJ
 AL9mjge0UAUnRjEtOndOsuyp5mi20PDdm6SL1OpG7FRadybaYWiptTa3Uh+dUwNE6cXK
 l07r0EE4tY8UzgY1V0/G+m6Vg6J4/FoWd+Ui1vWNL/95SX1xyqmyiHz46CKksoBKw7g6
 zDCkLs9kMW1XJXdug+/WA1zdnqJYhnV82O3K7+q0EALZG9j3UXUQkAsaabbTphi4Oouh
 v4rCeToq5uiU/ADN4lt8ojE0biAC1mg3zKI8rrudV05VsUwlZJet4HjxNkYZD9WKS3dx
 fzvQ==
X-Gm-Message-State: AO0yUKXEtvcfixJAu0S0+MHlbmrkbqAQkXpi61TdQ4gXLnH09+nVbxTI
 Nrp/+eRGmskhCO9joTlgwnEIXX5TkycEul/Jk/tjvCk1NY0=
X-Google-Smtp-Source: AK7set/FUnvePU6Kpmlm9V4uAi1P2V7Pf5UUYqSbq8si1m/d/uvd+TS4NzRfhytaexdmiDmEAgmOhikf/ZpS4FIvBN8=
X-Received: by 2002:a05:600c:a39e:b0:3d7:8c6:a8cb with SMTP id
 hn30-20020a05600ca39e00b003d708c6a8cbmr1305895wmb.82.1676250037891; Sun, 12
 Feb 2023 17:00:37 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <9010570.AfT4dvHSuA@silver>
 <CAFkjPTkcGC_eBp8Db2b48rtbFads+2KGkD1DZRL=C6k-4uX0oA@mail.gmail.com>
 <3428263.euj80CISbX@silver>
 <CAFkjPT=_SRORm=J9sxx0CxAWOGvKft-ZXhtNseHm5NNpv9TrLg@mail.gmail.com>
In-Reply-To: <CAFkjPT=_SRORm=J9sxx0CxAWOGvKft-ZXhtNseHm5NNpv9TrLg@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 12 Feb 2023 19:00:26 -0600
Message-ID: <CAFkjPTkqHs091FeePjZsPS8eNQoPY+HJiW1nS7KTDgEEue9XFQ@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Okay, after much thrashing about, I think I figured out what
 was going wrong -- seems filemap_write_and_wait didn't quite do what I thought
 it does when the superblock isn't marked as synchronous (whi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.42 listed in wl.mailspike.net]
X-Headers-End: 1pRND2-002GnI-K4
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Okay, after much thrashing about, I think I figured out what was going
wrong -- seems filemap_write_and_wait didn't quite do what I thought
it does when the superblock isn't marked as synchronous (which it used
to be if caches weren't enabled).  In any case, I replaced the
filemap_write_and_wait writeback flushes with something a bit heavier
weight and it seemed to get rid of the problem for my test cases.  I
will be doing some more testing, but if you get a chance see if it
gets rid of your problems as well.

       -eric

On Mon, Feb 6, 2023 at 7:59 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>
> On Mon, Feb 6, 2023 at 7:46 AM Christian Schoenebeck
> <linux_oss@crudebyte.com> wrote:
> >
> > Can't we just close old pages when a certain number is piled up? Originally I
> > assumed that the generalized, shared cache code would do that automatically at
> > a certain point.
> >
>
> Indeed, I'm sure that's there but probably only once the page cache
> approaches the memory limits.  However, that behavior should be
> uncoupled from the fids themselves anyways, fids really should only be
> there for open-files and even if we have writeback-fids, they should
> only be there for dirty open files (although have to keep them for all
> open-files because of the weird open without re-open permissions
> behavior).
>
>        -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
