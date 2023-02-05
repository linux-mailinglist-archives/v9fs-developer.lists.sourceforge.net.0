Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DAD68B0FE
	for <lists+v9fs-developer@lfdr.de>; Sun,  5 Feb 2023 17:38:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pOi1w-00011L-RT;
	Sun, 05 Feb 2023 16:38:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pOi1s-000117-SG
 for v9fs-developer@lists.sourceforge.net;
 Sun, 05 Feb 2023 16:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cBS8lQUszEWIyGd6gPYkFsOUKg2VkgciQ57XWIO2J8E=; b=gf/geXOmpM7heViXmDt8Ee37PT
 fwhpUT+f+ALFI3jDvd5h7CHVFTbD0cIwxEXA58QjPIHKhHB3KLWnfX0EOvsvPWKl8krwDTzTyThib
 yOoi073ghzvS27UKNCMxafBNgiqnIg0FNGpVhIe11zxv8uwumnXH/RB7CLayq0YdmKJA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cBS8lQUszEWIyGd6gPYkFsOUKg2VkgciQ57XWIO2J8E=; b=JV3/y3yFmdCV3V0eM4/JsT2ZKy
 KbGo9vFSDE351b3IeZVPg/u2QhKPR6Rtee/cDycXsd6yHlXlnEt5u63zwIoJm+QkUz9p8dAbL9Ai7
 pgEZQvMCOLh6BoVTZl8sG0PgG+MRRXYbe+pnpptq5cGktuvq0mno7GVvG4oN8qoUp/0E=;
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pOi1q-0007b9-L6 for v9fs-developer@lists.sourceforge.net;
 Sun, 05 Feb 2023 16:38:11 +0000
Received: by mail-wr1-f48.google.com with SMTP id o18so8447388wrj.3
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 05 Feb 2023 08:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=cBS8lQUszEWIyGd6gPYkFsOUKg2VkgciQ57XWIO2J8E=;
 b=I8DRSWVUk/f1dBE0yr4oIeL9bgoDOSOwPaDEu7lepjK11nMbo6hA418QZX49F1wXFD
 vJsqD3JO81C2KxCHAH6hoY10fjW9t0q5ja9x6LI9HSfCPJSYJji2beTGBul1+HhcBMI4
 zSU+igY3lY5afMrZm7OzSJjzImga+bqgLBY2wPvoe32yz0fbVZDviGojgyyYCxYSkF2j
 OysD2B5eytZZ2Q0A2PO/6TNNYQlnA+qShZQKOyJayOcvv24yyQZ4ZN3/HIEg18G1oM+K
 MGjYBgi1lOErJQZfMHDGzA2c+hV+rYNybf828jw3Gn3Fw/U+XFC5WmoIFvuizMrON2fW
 kr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cBS8lQUszEWIyGd6gPYkFsOUKg2VkgciQ57XWIO2J8E=;
 b=p2DV9mKSbxT8TsfzgNH/sHGRbADrscwqFA/1G2ncWpe5raWJe5Kp6cILumYEzF9e2C
 ex4QvujFEAooLkrazDPVEvqMhyjoH7oZqq54G2PEmVsLk/xbSYQgqsXT2/zMMEoUsmRf
 sXDqBB/XsOvJtR/fn/5sKZxe8Lz3ezziiGnB42R4/i7kYmXfuCIWar0M8Mnc8YgfK1iu
 nCyDyqd/RGlM1Fy1UjsnijAJS8XBKD2Si3rZ7slfeo/LaToY5gb75pVk+eHwynsSajGc
 H1mPm/x0l1JBIeBlJUNLMF1sLH8xc20/xPIhQPgDLlOov2tOXDNnjlgHm7ApTGEVe4m1
 xphw==
X-Gm-Message-State: AO0yUKVBJeLjSoJxjvvD7q0MRFu1iEj635Km7UmgyIamhh8AKU02J3E9
 XifuG0kcfFYFHmfHkghGsdUagePcNw089osxlzDM+MY+HVI=
X-Google-Smtp-Source: AK7set8Thtz9rQI4xrmg28H6KUW+kz/AJjlna344wYct7keepOQaeTmRV6+F1Eybr7fLhrTaR2ZGDEwFSPEJHiMNJp0=
X-Received: by 2002:a05:6000:18a:b0:2bf:b294:52f8 with SMTP id
 p10-20020a056000018a00b002bfb29452f8mr358051wrx.269.1675615084719; Sun, 05
 Feb 2023 08:38:04 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org> <2302787.WOG5zRkYfl@silver>
In-Reply-To: <2302787.WOG5zRkYfl@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 5 Feb 2023 10:37:53 -0600
Message-ID: <CAFkjPT=nxuG5rSuJ1seFV9eWvWNkyzw2f45yWqyEQV3+M91MPg@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Feb 2, 2023 at 5:27 AM Christian Schoenebeck wrote:
 > > Looks like this needs more work. > > I only had a glimpse on your patches
 yet, but made some tests by doing > compilations on guest on [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pOi1q-0007b9-L6
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
Cc: lucho@ionkov.net, linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Feb 2, 2023 at 5:27 AM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> Looks like this needs more work.
>
> I only had a glimpse on your patches yet, but made some tests by doing
> compilations on guest on top of a 9p root fs [1], msize=500k. Under that
> scenario:
>
> * loose: this is suprisingly the only mode where I can see some performance
> increase, over "loose" on master it compiled ~5% faster, but I also got some
> misbehaviours on guest.
>

I was so focused on the bugs that I forgot to respond to the
performance concerns -- just to be clear, readahead and writeback
aren't meant to be more performant than loose, they are meant to have
stronger guarantees of consistency with the server file system.  Loose
is inclusive of readahead and writeback, and it keeps the caches
around for longer, and it does some dir caching as well -- so its
always going to win, but it does so with risk of being more
inconsistent with the server file system and should only be done when
the guest/client has exclusive access or the filesystem itself is
read-only.  I've a design for a "tight" cache, which will also not be
as performant as loose but will add consistent dir-caching on top of
readahead and writeback -- once we've properly vetted that it should
likely be the default cache option and any fscache should be built on
top of it.  I was also thinking of augmenting "tight" and "loose" with
a "temporal" cache that works more like NFS and bounds consistency to
a particular time quanta.  Loose was always a bit of a "hack" for some
particular use cases and has always been a bit problematic in my mind.

So, to make sure we are on the same page, was your performance
uplifts/penalties versus cache=none or versus legacy cache=loose?  The
10x perf improvement in the patch series was in streaming reads over
cache=none.  I'll add the cache=loose datapoints to my performance
notebook (on github) for the future as points of reference, but I'd
always expect cache=loose to be the upper bound (although I have seen
some things in the code to do with directory reads/etc. that could be
improved there and should benefit from some of the changes I have
planned once I get to the dir caching).

          -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
