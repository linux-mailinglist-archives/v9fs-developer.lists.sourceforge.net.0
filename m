Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FED547402
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 12:56:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzymy-0003Zb-BN; Sat, 11 Jun 2022 10:56:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sudipm.mukherjee@gmail.com>) id 1nzymw-0003ZR-VX
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 10:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eqA6H/Kd3v8qLCIvaYprcutQG+OhOEiZYNUR3mtKR8g=; b=ARm7maWs+qwvJA0EJf6DqW9HA6
 MvYxJd7s3n/6y3h8VrSepQjDDq4Vxlni7+zX29o/gYQq/iYdVSajtYor5BePD/ThoI0MUWwHCcEHO
 VvdON5XVixJweIyPVO4549Mpmj1Ww1MLhgS5PTnbO48WPDXtfSn9xQkM4rDU+TzWqSKg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eqA6H/Kd3v8qLCIvaYprcutQG+OhOEiZYNUR3mtKR8g=; b=fz5oosSzwYTjjAzBt+3iHuY67c
 VWIfRxVDHCdPIpjfoFdDa3f91nbHw4u6prHNot36V0F0DSDA4OfAoNNDJZgDSQHYQ6YqWcNrsunte
 jBbWRBRgS8wGVJT6cjLyFe5+DY2mSFjFGcTRPbg4vOQ8h25t09zj2cgNmIUQQoNNxduE=;
Received: from mail-yw1-f181.google.com ([209.85.128.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzymt-0004pX-MF
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 10:56:17 +0000
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-3137eb64b67so12462157b3.12
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Jun 2022 03:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eqA6H/Kd3v8qLCIvaYprcutQG+OhOEiZYNUR3mtKR8g=;
 b=InFhqVRk/HMI49qxhWCdNY0P1XE0wEpBRC5azFWGcNn7x4HbOqxHc6oFfgHf6xc7ja
 ANUONPNb6l35CdrdMuoFZUtnLBuqDAGpQT+yrn0L+ezkWBq20mM6CxFRdxvZtKpWqlxm
 +JYolldNIWCvjuh+pqbUdoF/r7eMtqzYIATebPuntniMgYiwEgY68cssFw1CO/4kX0G2
 t+JZp25P706XCw63jlQzvshJt6/5Hvyo95tqAvRjnluQP34WC+v4AZlUvg6DjA04SzPH
 N1MoptCK0shoroPvLCx0hKetpvhfX1//r8LuC3fcLYPE/2wrXCtTt/G+j6mhH4DQt/+f
 wNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eqA6H/Kd3v8qLCIvaYprcutQG+OhOEiZYNUR3mtKR8g=;
 b=351lG/RKMwqlk3JpbafGNYm8x5wPY6PymM+dAfvTqgJWkvtbpSXJBbxg3ijy1lV873
 X4quAx0LEXl9FnZUGlDWFTJ5m0gsu2xvjxNhLFGS0IzRMRC2hiey0gIyLg3Vrnvwun8+
 yoAJFAtENpN9DOXaa9ECZAQ+DxbyEdfBg7FlfW1KxnCayt9wQkbV+648WMwhZVD0BCMX
 ti2WMtUpgFFtaCNZhRQy+UB2zUIzhmnjq87IxtxNARrl3yBTnR3wDs0A93pkWFrusx4J
 bv28RBQo8yXE4mPhBjkG/lb3mmo65np2u8G5BqhPLYszIqNLGtSdCiPunXH8nMfR2yHu
 9/gg==
X-Gm-Message-State: AOAM530aJ9Z84OZ1BNMdrvOpmRRgzl147FXp1iVA4bwLgjD94bXmaXLm
 bCb2F1WNdo4dp754k6prMG3/TkVjEbfC2xpXj30=
X-Google-Smtp-Source: ABdhPJzMPaMP2VjmabTBvuNSAp2tyI0KZoHPUC4tMzTy1Au1VZoxjK59G/T3tyeKHoUGM5JYj+tYJXEMmKiGGgUt7c8=
X-Received: by 2002:a81:25cc:0:b0:30f:ea57:af01 with SMTP id
 l195-20020a8125cc000000b0030fea57af01mr51233219ywl.488.1654944971327; Sat, 11
 Jun 2022 03:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <YqRyL2sIqQNDfky2@debian>
In-Reply-To: <YqRyL2sIqQNDfky2@debian>
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Date: Sat, 11 Jun 2022 11:55:35 +0100
Message-ID: <CADVatmOKtwSbdGcis4+44-G=UEdHWfOE3M4SBu=25vvp0TWxEA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>, Al Viro <viro@zeniv.linux.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 11:45 AM Sudip Mukherjee wrote: >
 > Hi All,
 > > The latest mainline kernel branch fails to build for "arm allmodconfig", 
 > "xtensa allmodconfig" and "csky allmodconfig" with [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sudipm.mukherjee[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nzymt-0004pX-MF
Subject: Re: [V9fs-developer] mainline build failure due to 6c77676645ad
 ("iov_iter: Fix iter_xarray_get_pages{, _alloc}()")
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Gao Xiang <xiang@kernel.org>, linux-erofs@lists.ozlabs.org,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jun 11, 2022 at 11:45 AM Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
>
> Hi All,
>
> The latest mainline kernel branch fails to build for "arm allmodconfig",
> "xtensa allmodconfig" and "csky allmodconfig" with the error:

missed adding "mips allmodconfig".



-- 
Regards
Sudip


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
