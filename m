Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33853382A62
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 May 2021 12:57:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1liavy-0006ZP-6c; Mon, 17 May 2021 10:57:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xieyongji@bytedance.com>) id 1liavx-0006ZH-5M
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 10:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o3PHrt9OnWYQ4pmyri9gi+eqTsu2aHBAA4k1sqajL94=; b=EhKTSN+p4czzbGcPNdWvVqdABW
 iB2SnfRRbOZAo3PsdJXwfz24ezDQoe0U7TC13J5AWWNrMpAgu/pWIyNB134yA8/MUJEP/yeGFhQkm
 CNHy0d6w9SXpqyt1FlpwQp7r6QpqJ+JOYRc3fLoAAE7O8tC3MmPPtWp5Oy2TVzPC0kR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o3PHrt9OnWYQ4pmyri9gi+eqTsu2aHBAA4k1sqajL94=; b=aRgKWkKcCsBoZPe3OG3WwjYvO7
 BOcLw92CijE+KuD4GWeg6wE2Fu34kNpeNS3WhyTcjSDuQZ9dG8VlACP3Nls/Vo5psqbFRbBpJVS9J
 dH5m2aSvD9xNulWMZonXODndM99WFPJ3MU23uaJqMHGrRYfU0ZYYqJ1AK7NJzOvB7XFE=;
Received: from mail-lj1-f173.google.com ([209.85.208.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1liavp-00BLxD-NS
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 10:57:15 +0000
Received: by mail-lj1-f173.google.com with SMTP id e2so325419ljk.4
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 17 May 2021 03:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o3PHrt9OnWYQ4pmyri9gi+eqTsu2aHBAA4k1sqajL94=;
 b=TN/2E4qAf5H2eY04svEUzPhzsxXWz+hCFjJgCpFBGgHNszkEG8/B5Dj2n9wO8+XcnT
 n9C9jYWdyJ1kqd+24O26R0eRvXp/ijIH8zdZXyQN9LP3NJ59RDpCfAznlfpud+lmQ4Ov
 xZcY5M28IUUh9XeyiqNxU71RHPXHuV8jPY1WtVVNKIG4fAAC9JDqHZbcz40JUZG9L8J0
 EtUGyjZ6Nmm48cjclUnagOpY+hS6UsQgF6WBabZx/j1FcDXt5n5GJbHWPQPSN96yXssF
 tg9vGbjGTR0sGxrDLC2zCnWsOsceV3NUXkothDpasExrMQ0Q+E3ObASfqs8sPEBLp0bp
 mSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o3PHrt9OnWYQ4pmyri9gi+eqTsu2aHBAA4k1sqajL94=;
 b=P79LvwNCnFk6byg2AGBQr1HOd2Jghn5RBYeN8yZ1TsNvR2uqwk+Dr9rPIUrgDe9+aC
 qksb7zD/1Tl528K36a2dF5+GDdeyaG/4zdNC3oYq1LlXqUygM/uT9/YE3AHx4vraqIz0
 SsZAcTd3bdF3FYt0CC3YA6Ggkfnt0oVZ04rTtyAnhvOzqM87wxNueVhNQvmV2pM/z0Ng
 FUBxfNo1Z8pkbVWHVhEVF6hLnLLhGcGg1qul2Y77ZXgRE2PYoEiznReOok/V9FHNWd/O
 9dNeo2qb/Jo8i2GVkkBF3oLvnM7y99zMN5m+aPu8+ldR8AOnARp0buZ+FboCDMorHhlO
 y8kA==
X-Gm-Message-State: AOAM5331qPOKYanfHZLDJvyulimr7RPY5/v9mopb6PgGhJ9o0XVemYR9
 er2VlTN0s4Owq5u+zwUiLAbLVbRB0sZ1/E9PAwzT661APw==
X-Google-Smtp-Source: ABdhPJyHdS/eLnCrE5Sk2uzSQ0KmKYA9aE3vrQTk2avVn1N79P3dfi+GDFY16zkW+js7/1HTTSa3uAKclstNxBm58P8=
X-Received: by 2002:aa7:cd55:: with SMTP id v21mr120416edw.344.1621247532679; 
 Mon, 17 May 2021 03:32:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210517083557.172-1-xieyongji@bytedance.com>
 <YKI9gHMjbz8nAvYp@codewreck.org>
In-Reply-To: <YKI9gHMjbz8nAvYp@codewreck.org>
From: Yongji Xie <xieyongji@bytedance.com>
Date: Mon, 17 May 2021 18:32:01 +0800
Message-ID: <CACycT3vayYaBhcui8889CDyrL_5DPezCkTA88SJ3e0Di021JEg@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.173 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.173 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1liavp-00BLxD-NS
Subject: Re: [V9fs-developer] [PATCH] 9p/trans_virtio: Remove sysfs file on
 probe failure
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
Cc: ericvh@gmail.com, lucho@ionkov.net,
 linux-kernel <linux-kernel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, May 17, 2021 at 5:55 PM <asmadeus@codewreck.org> wrote:
>
> Xie Yongji wrote on Mon, May 17, 2021 at 04:35:57PM +0800:
> > This ensures we don't leak the sysfs file if we failed to
> > allocate chan->vc_wq during probe.
>
> Right.
> I'll add a Fixed tag and take to -next shortly
>

Thanks!


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
