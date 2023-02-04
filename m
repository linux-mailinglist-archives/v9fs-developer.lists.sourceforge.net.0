Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1200F68AA50
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Feb 2023 14:41:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pOImt-0003vh-86;
	Sat, 04 Feb 2023 13:41:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pOImr-0003vD-N1
 for v9fs-developer@lists.sourceforge.net;
 Sat, 04 Feb 2023 13:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=10v4qs2VYl5bLPi39w3LIpFFCfv3YmEZ+W1sESvpjNk=; b=Zuv/cbZFjGSzvLIV3hNwZhzCYe
 OkSU6nFaYGlnUibD5qYYcFLxi4CCseDte01cvufSkiz19n6/xECx1L5RvCZfHMMyD47cNo+1kEClf
 5ls5vUIDBsdpmOrraARYMKliFSSCOrDTLTGjsEeQWJoaMK1s80qoADlAnalHyx/3FrjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=10v4qs2VYl5bLPi39w3LIpFFCfv3YmEZ+W1sESvpjNk=; b=laZcQPhZtoeUqTNhxTDAcvY/F1
 qw0Q26JVJwXAYTGaWRUtIpkNF+P7L6FLwEFI5XtPkMFj2F0blHhdKpZXo2EC7wlo7RyZltHZYktt9
 WzkNtfO5nVFkCxtMpGrWa1AZ/YzN533YhF5nOQ97KlmX2zM1iar3yG6s0mmgao1gwqe8=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pOIml-00B3qu-Eu for v9fs-developer@lists.sourceforge.net;
 Sat, 04 Feb 2023 13:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=10v4qs2VYl5bLPi39w3LIpFFCfv3YmEZ+W1sESvpjNk=; b=cem4t6wIDRR2F8GwbUjY8nvuPv
 gjgJ7dsVLDNDO1f3q48o2JE610ll5dmJHffLa1V/OKpK7grOpaSwyLTWdS+Q5GpbOdRFuUTDsf68o
 dqYZ9UQ2ZMwK/+TShD1YtZ85oTV92W1nmqpsWETajnMrnhKmIl084X43kOEavOrsuHD51VrkCbm8D
 yOVPoXZx5d3lCLyj2ESF8cWCj2kVQmBx55ZpxgLlRSMRF/5b7jFWNtDR68s9L4UvFRmAqTZmvbF9j
 a1m1EZYG5bIYp9I/eipLKNpJAtE9DFgsg2f/JYitbHXOffj6mWSaQDoZsT5mRAAzIFWb0EpBtO20d
 RuDKd/2npegh/sy61DTY7gqKsx8moAhmuIR7YAxjkM0QoCpfdhOgE/jqxD5vdYwzIGvuLvw4y+FJe
 /5P6irUxoF5VRFc7ngqVWOAM68zzQabw0SPhVBpIedmnyCvyNIOR9EhB0+7bvVnrACICEmtoAyKWL
 r4Uug+yExBAiywY4j9yrdAX3w+1wpligSgY45cGDl91ISV8Q9wgrRRTnNRB8JE7B+kV10vfTdrKW+
 6AjvBrUrCuzMZJX74+7Cidsl7hhL85KOmKfOuRFyIRL2h/hGs+XAA3mRjcpnFXBCu7cDcjzWIbMDZ
 PJ/jSPtvulaqnyLD2MRggK3v6XEfoO4S+x+yNPxlg=;
To: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 04 Feb 2023 14:40:42 +0100
Message-ID: <1675519496.NcNzUn7KHO@silver>
In-Reply-To: <CAFkjPTk=OwqKksY5AYzW4UOzKTbhg-GeWvVQtr0d_SU-F2GZQw@mail.gmail.com>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <2302787.WOG5zRkYfl@silver>
 <CAFkjPTk=OwqKksY5AYzW4UOzKTbhg-GeWvVQtr0d_SU-F2GZQw@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Friday, February 3,
 2023 8:12:14 PM CET Eric Van Hensbergen
 wrote: > Hi Christian, thanks for the feedback -- will dig in and see if
 I can > find what's gone south here. Clearly my approach to writ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pOIml-00B3qu-Eu
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Friday, February 3, 2023 8:12:14 PM CET Eric Van Hensbergen wrote:
> Hi Christian, thanks for the feedback -- will dig in and see if I can
> find what's gone south here.  Clearly my approach to writeback without
> writeback_fid didn't cover all the corner cases and thats the cause of
> the fault.  Can I get a better idea of how to reproduce - you booted
> with a root 9p file system, and then tried to build...what?

KDE, which builds numerous packages, multi-threaded by default. In the past we
had 9p issues which triggered only after hours of compiling, however in this
case I don't think that you need to build something fancy. Because it already
fails at the very beginning of any build process, just when detecting a
compiler.

May I ask what kind of scenario you have tested so far? It was not a multi-
threaded context, right? Large chunk or small chunk I/O?

> Performance degradation is interesting, runs counter to the
> unit-testing and benchmarking I did, but I didn't do something as
> logical as a build to check -- need to tease apart whether this is a
> read problem, a write problem...or both.  My intuition is that its on
> the write side, but as part of going through the code I made the cache
> code a lot more pessimistic so its possible I inadvertently killed an
> optimistic optimization.

I have not walked down the road to investigate individual I/O errors or even
their cause yet, but from my feeling it could also be related to fid vs.
writeback_fid. I saw you dropped a fix we made there last year, but haven't
checked yet whether your changes would handle it correctly in another way.

> Finally, just to clarify, the panic you had at the end happened with
> readahead?  Seems interesting because clearly it thought it was
> writing back something that it shouldn't have been writing back (since
> writeback caches weren't enabled).   I'm thinking something was marked
> as dirty even though the underlying system just wrote-through the
> change and so the writeback isn't actually required.  This may also be
> an indicator of the performance issue if we are actually writing
> through the data in addition to an unnecessary write-back (which I
> also worry is writing back bad data in the second case).

It was not a kernel panic. It's a warning that appears right after boot, but
the system continues to run. So that warning is printed before starting the
actual build process. And yes, the warning is printed with "readahead".

> Can you give me an idea of what the other misbehaviors were?

There were really all sorts of misbheaviour on application level, e.g. no
command history being available from shell (arrow up/down), things hanging on
the shell for a long time, error messages. And after the writeahead test the
build directory was screwed, i.e. even after rebooting with a regular kernel
things no longer built correctly, so I had to restore a snapshot.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
