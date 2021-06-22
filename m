Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0E13B0D08
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Jun 2021 20:37:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvlGt-0006jQ-Bw; Tue, 22 Jun 2021 18:37:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jim.cromie@gmail.com>) id 1lvlGs-0006j8-5x
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 18:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X582ckIshWor1vloajSsyeHfuFh3jfQXUW3m4Q8smqI=; b=efzk0E84oZhBztTKe/s2q2kH9b
 5STdWfDFfrsH1527/+FlCuA1qqRqZ1NNyUspzFIx6PJPNkLQ60i2wK9Lg244dv9DMnFMFuuuEtNQw
 GcMHx/SfBYqVar0HKjAHUXM8KomPkOjNa65NRYdxF2ZOhsepwLTdvQxoaKdMwN2Kj9cI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X582ckIshWor1vloajSsyeHfuFh3jfQXUW3m4Q8smqI=; b=YKH2MShw90Wo3lT4xp1v8hzr/j
 tCuU2HbJKvJgpu3XkStrfAZN1rXGNpz63ZQOySrAecR6MrIsdkdSWJuRZbxNc6OTEWU2fwkXrq3f/
 5f4ZjCPLZlhJKs3hS37oBHFhLA6TbFsF+t7KwPH1D6Rlq6X1j3xrEimuOIirqevDNFXQ=;
Received: from mail-vs1-f46.google.com ([209.85.217.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lvlGf-007iqn-Nb
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 18:37:16 +0000
Received: by mail-vs1-f46.google.com with SMTP id j8so81111vsd.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Jun 2021 11:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X582ckIshWor1vloajSsyeHfuFh3jfQXUW3m4Q8smqI=;
 b=o1jHn6o+eHT1RVFF4RmYAjBIIibQSdaxhwqXjxdJGsIUTKf6alXrrQi1qF2E1wT+ok
 fNToG9ZlHvCuQ4ez1PXEtGiQTSvNGY05YUxjQochgBdMk6d1r7rPmkKXo8oi5GEeycG2
 94KPLMd7Y0AZWIQIuxKTJar5UvL2Rd1JNayyQd7roX9cZV/pvJqBVNUIXo+tuYJAYXse
 uUPbnu1aEkbRcr8Uhl6epJBkyrfNvgN0+cxzWMX4BF351UI0ptYDg5kDuudhUohGkNIJ
 uK0+BUUPYIoDl7A9M24NkD00wyq1WlPQKw3QBAjEcjVvHjyruYeBlI/OKZokSh8thlAj
 ANtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X582ckIshWor1vloajSsyeHfuFh3jfQXUW3m4Q8smqI=;
 b=ZQX4ptDVP21Xo5R+TQd1IznLpyvWxPpdq09p0uPt0mRUHLWNdODKfH+XueQ42vSkhq
 xudX70s4mW8RGL2yYkP4iJYwxmLWeZ+Sr29oY2hn0co2+NFdc4WS1bYRwfFZKya1pbhJ
 fX4xmjp9fHFkiyLMVRhAddYfXolT0Fds6cM+8tQwok0YB+9PC4AAcqsv33OGz5Fkttbo
 dl8IqBhd2zFUIbMEpP4b0lPdwwd6nmHiE/uJWnrVEz6wDZrbx7rc7ceO7+1hvLWZN34l
 zfDLgZzSewdNSBropSRmb0PaF2vfhB10yGQGEmX4w1UUo0GSoy2OrGb3QjbhA9y4Y3Ci
 SlZg==
X-Gm-Message-State: AOAM532ATbhaOT6YQTPxTYrOjeqvassTwbozIbALSdAn89H91Abc/i6o
 rW4Wlv8MvciU8RZrIrmKJl5drzKmtbXawTFOhcejy8S9484=
X-Google-Smtp-Source: ABdhPJxhBKhEsQhWrXYbQLxxBLqOgxiMT+e50uXcIlef+zj/VxJ35FOy0gP1IO+cPJpVTfIjUg+1x0v8CW/qcoFIGWQ=
X-Received: by 2002:a05:6102:22e7:: with SMTP id
 b7mr24640330vsh.14.1624387015578; 
 Tue, 22 Jun 2021 11:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
 <YNIaFnfnZPGVd1t3@codewreck.org>
In-Reply-To: <YNIaFnfnZPGVd1t3@codewreck.org>
From: jim.cromie@gmail.com
Date: Tue, 22 Jun 2021 12:36:29 -0600
Message-ID: <CAJfuBxywD3QrsoGszMnVbF2RYcCF7r3h7sCOg6hK7K60E+4qKA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jim.cromie[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.46 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lvlGf-007iqn-Nb
Subject: Re: [V9fs-developer] KCSAN BUG report on p9_client_cb /
 p9_client_rpc
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
Cc: v9fs-developer@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jun 22, 2021 at 11:13 AM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> jim.cromie@gmail.com wrote on Tue, Jun 22, 2021 at 10:42:58AM -0600:
> > I got this on rc7 + my hacks ( not near p9 )
> > ISTM someone here will know what it means.
> > If theres anything else i can do to help,
> > (configs, drop my patches and retry)
> >  please let me know
>
> Thanks for the report!
>
> > [   14.904783] ==================================================================
> > [   14.905848] BUG: KCSAN: data-race in p9_client_cb / p9_client_rpc
>
> hm, this code hasn't changed in ages (unless someone merged code behind
> my back :D)
>
> I had assumed the p9_req_put() in p9_client_cb would protect the tag,
> but that doesn't appear to be true -- could you try this patch if this
> is reproductible to you?
>

I applied your patch on top of my triggering case, it fixes the report  !
you have my tested-by

> The tag is actually reclaimed in the woken up p9_client_rpc thread so
> that would be a good match (reset in the other thread vs. read here),
> caching the value is good enough but that is definitely not obvious...
>
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
