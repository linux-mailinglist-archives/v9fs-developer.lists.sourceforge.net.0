Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D1168ACA3
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Feb 2023 22:39:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pOQFx-0008JG-HR;
	Sat, 04 Feb 2023 21:39:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pOQFq-0008J4-1u
 for v9fs-developer@lists.sourceforge.net;
 Sat, 04 Feb 2023 21:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fIKWmSceHmw8uSx8gjj44vcTkVFyyDB6swe4nbPGfJs=; b=e3snG2DgahGM8j02yiE/oaryaq
 dNeeWHm3sZwLBTVdx3hTmaec4igSgH4ihOJjMNPtQypoSi5XGzVa3538/olnrCqQQPAKD+xQg9BnZ
 WZ8Co8ntUItTUP0diSrTuSbkfPE18i5YsBdhR3i+u4u99chkjGlOs2t86Jl/Hene5tDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fIKWmSceHmw8uSx8gjj44vcTkVFyyDB6swe4nbPGfJs=; b=YCrs0fhNb0cajSTf7WsuJ0Fc0m
 e35Mp0/XWJa1GBEejvFY8O+L2uctYGO271HSp/dPDGPnkkoCuG4PmUxhUOJiBt2Df/yX7O+8vGqtG
 5m9K8NMrYr7uYroiGy+vq+5Mu0iGvdB829khvLjPd6xf6SJ0/WxVRD5dm/n2DWvnRL2I=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pOQFi-00BOab-21 for v9fs-developer@lists.sourceforge.net;
 Sat, 04 Feb 2023 21:39:22 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 l21-20020a05600c1d1500b003dfe462b7e4so3068577wms.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 04 Feb 2023 13:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fIKWmSceHmw8uSx8gjj44vcTkVFyyDB6swe4nbPGfJs=;
 b=acW/7A77GhgMzuYRoMhJw5f5FqBeauOPmztOqttecXvh3Ygf4Pv0+51voNziO858ET
 OMmnOfEnfM5eoCuNn4dBi0YC/7CfwrpLw6owauVJAtw4scQgiUbNHhuqrAcHsbb+ya/3
 3/qvZ3YygjFdwMwDKYYqDp0jVSUeY5DRlzXYxXJV3LqiAvygDQtg94tdRxNINR8uVH3H
 FpowW1h1eSL2CR+9qQihWZxukosq0OyfkuPk3oqiHPBYYTgvqFDLSNbmJMI67Iufhmjb
 j841GNHeUS9+LOUbm+5zmohoKU1X6LfDi9Lp1L24LIytqGsbctxB/5KBzXWrS9Hef4+Y
 2+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fIKWmSceHmw8uSx8gjj44vcTkVFyyDB6swe4nbPGfJs=;
 b=qlw7MGR1aGi2PwjVwZydGv6k3FtBa+dZURv/uiOXvr2N5dTRJpKnYih7F2XejSc50N
 gmpdcSM7T08j7NOOuFM4HYEapycamGz8zIx0iyRgBh3P4JhxrUEaW+lvm8wzMf6XMDny
 MgI1IQOgDgHhCEwCsqU1yZbQNLExHQHf4W1CHqSuuaeZbtmAX47wV0h3TXgQ3aRxkLyZ
 l4QPWwHSKgNtd23fZOjr76GEONMPCXRFBpNanjn9eBFcPre2ZJ+u+xLgXmjz5yoGprKS
 wchX7zA5HsH42rqZjRZVSBk9YCDs2RDSLOKCu0IzxzGYzFPCULNbwKZYQUwoGLfYoLd0
 i0MQ==
X-Gm-Message-State: AO0yUKVeBrqWBUNTAeoYSNnX6dImkfk8TZFj3bkuNAT6PZsc2IfbrlkR
 NA9rDd1ENgg4gx/UB4jN2+wur0grOlPU7BiIHXI=
X-Google-Smtp-Source: AK7set+RQmq4DMYiFys2lXkSWkh0D3v9dLnzGb5xcY/X5D6mR6zj4URhzh6K91bUzyLigTIpm1vZr9FIP7jni+/HXJg=
X-Received: by 2002:a1c:e909:0:b0:3d1:e3ba:3bb6 with SMTP id
 q9-20020a1ce909000000b003d1e3ba3bb6mr730789wmc.29.1675546751084; Sat, 04 Feb
 2023 13:39:11 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <2302787.WOG5zRkYfl@silver>
 <CAFkjPTk=OwqKksY5AYzW4UOzKTbhg-GeWvVQtr0d_SU-F2GZQw@mail.gmail.com>
 <1675519496.NcNzUn7KHO@silver>
In-Reply-To: <1675519496.NcNzUn7KHO@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 4 Feb 2023 15:38:59 -0600
Message-ID: <CAFkjPTm4SsB9rBX4ZZSZCYpiXgWYvQmViA_oALo5acdYNUUW2w@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Okay, thanks for the additional detail - I have an idea of
 what the problem might be. As far as my tests - I've predominantly tested
 with dbench, fsx (with and without mmap tests), postmark, and bonnie -- running
 single and multithreaded. All seem to work fine and didn't report errors.
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pOQFi-00BOab-21
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

Okay, thanks for the additional detail - I have an idea of what the
problem might be.

As far as my tests - I've predominantly tested with dbench, fsx (with
and without mmap tests), postmark, and bonnie -- running single and
multithreaded.  All seem to work fine and didn't report errors.  I
thought the dbench trace was based on a build, but perhaps that's
inaccurate, or perhaps there's something peculiar with it being the
root file system (I have always just mounted it after boot, not tried
booting with it as root).

(thinking out loud)
In any case, I think the fact that we see that error when in readahead
mode is the key hint, because it means it thinks something is
writeback cached when it shouldn't be.  The writeback is triggered by
the setattr, which always calls filemap_write_and_wait -- this is all
old code, not something added by the change.  My assumption was that
if the inode had no dirty data (writebacks) then it would just not do
anything -- this should be the case in readahead mode.  So we gotta
figure out why it thinks it has dirty data.  Looking at the code where
the warning is printed, its a WARN_ONCE so its quite possible we are
hitting this left and right -- we can probably switch that to always
print to get an idea of this being the root cause.  Need to add some
more debug code to understand what we think we are writing back as
anything there should have been flushed when the file was closed.
To your multithreaded concern, I suppose there could be a race between
flushing mmap writes and the setattr also calling writeback, but the
folio is supposed to be locked at this point so you think there would
only be one writeback.  This will be easier to understand once I
reproduce and have a full trace and we know what file we are talking
about and what other operations might have been in flight.

There is a case in mmap that I was worried always required writeback,
but I did enough unit testing to convince myself that wasn't the case
-- so could be something down that path but will reproduce your
environment first and see if I can get the same types of error (I'm
most of the way there at this point, it is just we are digging out
from an ice storm here in texas so there's been more chainsawing than
coding....).

        -eric

On Sat, Feb 4, 2023 at 7:40 AM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> On Friday, February 3, 2023 8:12:14 PM CET Eric Van Hensbergen wrote:
> > Hi Christian, thanks for the feedback -- will dig in and see if I can
> > find what's gone south here.  Clearly my approach to writeback without
> > writeback_fid didn't cover all the corner cases and thats the cause of
> > the fault.  Can I get a better idea of how to reproduce - you booted
> > with a root 9p file system, and then tried to build...what?
>
> KDE, which builds numerous packages, multi-threaded by default. In the past we
> had 9p issues which triggered only after hours of compiling, however in this
> case I don't think that you need to build something fancy. Because it already
> fails at the very beginning of any build process, just when detecting a
> compiler.
>
> May I ask what kind of scenario you have tested so far? It was not a multi-
> threaded context, right? Large chunk or small chunk I/O?
>
> > Performance degradation is interesting, runs counter to the
> > unit-testing and benchmarking I did, but I didn't do something as
> > logical as a build to check -- need to tease apart whether this is a
> > read problem, a write problem...or both.  My intuition is that its on
> > the write side, but as part of going through the code I made the cache
> > code a lot more pessimistic so its possible I inadvertently killed an
> > optimistic optimization.
>
> I have not walked down the road to investigate individual I/O errors or even
> their cause yet, but from my feeling it could also be related to fid vs.
> writeback_fid. I saw you dropped a fix we made there last year, but haven't
> checked yet whether your changes would handle it correctly in another way.
>
> > Finally, just to clarify, the panic you had at the end happened with
> > readahead?  Seems interesting because clearly it thought it was
> > writing back something that it shouldn't have been writing back (since
> > writeback caches weren't enabled).   I'm thinking something was marked
> > as dirty even though the underlying system just wrote-through the
> > change and so the writeback isn't actually required.  This may also be
> > an indicator of the performance issue if we are actually writing
> > through the data in addition to an unnecessary write-back (which I
> > also worry is writing back bad data in the second case).
>
> It was not a kernel panic. It's a warning that appears right after boot, but
> the system continues to run. So that warning is printed before starting the
> actual build process. And yes, the warning is printed with "readahead".
>
> > Can you give me an idea of what the other misbehaviors were?
>
> There were really all sorts of misbheaviour on application level, e.g. no
> command history being available from shell (arrow up/down), things hanging on
> the shell for a long time, error messages. And after the writeahead test the
> build directory was screwed, i.e. even after rebooting with a regular kernel
> things no longer built correctly, so I had to restore a snapshot.
>
> Best regards,
> Christian Schoenebeck
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
