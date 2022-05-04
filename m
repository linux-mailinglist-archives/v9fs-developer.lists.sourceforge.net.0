Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9C251AD8E
	for <lists+v9fs-developer@lfdr.de>; Wed,  4 May 2022 21:08:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nmKLz-0007Ak-9g; Wed, 04 May 2022 19:08:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nmKLv-0007AZ-Ru
 for v9fs-developer@lists.sourceforge.net; Wed, 04 May 2022 19:08:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rE2gX/bRFMhYFilz9M+Je3TFSv/LnyF6LKyyIeJ5Ek0=; b=YcdUr/Ome/BWZckvyZH8P60p0O
 U/XM5TmBkb2olmKgvhflAFTMx10rYygDua9RDu2vkP5SPrntb8dqzq0nwX3ICcN8+lzpJgrwUiDYv
 zmtuK9T+awKsM2/1odg8p5a+aXS/vzq8HD2qIyT/PV4F2Ujyf7dZEVzSoF7JqBPZX1/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rE2gX/bRFMhYFilz9M+Je3TFSv/LnyF6LKyyIeJ5Ek0=; b=T8DuL4/x68BY51d6+BTMVuQz7c
 3I1gYj6hd8nvtfc4TjY8y02mzD7TMU+ELarOyG8CPkkaGMH9O710cT6Eztdy3AMovHr5IzquKotts
 fg6vMJOmHznLnStuZEuIxy4SBsVecu12FkYoe8nqJ1f29FkcdTyPoaoYCXuIkFk/V28Y=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmKLs-001J7g-7v
 for v9fs-developer@lists.sourceforge.net; Wed, 04 May 2022 19:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=rE2gX/bRFMhYFilz9M+Je3TFSv/LnyF6LKyyIeJ5Ek0=; b=T7n6n7snqTZpSmkVObfdZEp33V
 vz1bLq2kHQp48GpqsKjXZqo15K4ioh/XYm0DyhORvkOSyhdftlzAjw0otsFpoZzA175lmduE397kW
 zkXMfq4nIbe8BetGkmlLE2+qwgeT4nNj8AOKKwDwwzA/wNIxWu0mUhuM3bL3Cnf+HsoJsq5DY4MlN
 TpiKEWJHFW6mPdAHeInhIYuMynq2U4w9CA20OLcbClSE3P9gk7bZEkkZsIGttbmtKx4b6/Zm/+gN9
 pLP7IDDBw1tvI+qFck/uZ+mvzT8QO6jZJRjaLM+mgpr7TVzhDrKspunqCB4AVDCOn6gmocMUAjcm6
 gBIHdHhg==;
To: asmadeus@codewreck.org
Date: Wed, 04 May 2022 20:33:36 +0200
Message-ID: <6688504.ZJKUV3z3ry@silver>
In-Reply-To: <YnECI2+EAzgQExOn@codewreck.org>
References: <YmKp68xvZEjBFell@codewreck.org> <1817722.O6u07f4CCs@silver>
 <YnECI2+EAzgQExOn@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag, 3. Mai 2022 12:21:23 CEST asmadeus@codewreck.org
 wrote: [...] > - add some complex code to track the exact byte range that
 got updated > in some conditions e.g. WRONLY or read fails? > Th [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nmKLs-001J7g-7v
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 3. Mai 2022 12:21:23 CEST asmadeus@codewreck.org wrote:
[...]
>  - add some complex code to track the exact byte range that got updated
> in some conditions e.g. WRONLY or read fails?
> That'd still be useful depending on how the backend tracks file mode,
> qemu as user with security_model=mapped-file keeps files 600 but with
> passthrough or none qemu wouldn't be able to read the file regardless of
> what we do on client...
> Christian, if you still have an old kernel around did that use to work?

Sorry, what was the question, i.e. what should I test / look for precisely? :)

[...]
> > > Also, can you get the contents of /proc/fs/fscache/stats from after
> > > reproducing the problem?
> > 
> > FS-Cache statistics
> 
> (He probably wanted to confirm the new trace he added got hit with the
> workaround pattern, I didn't get that far as I couldn't compile my
> reproducer on that fs...)

Yeah, I got that. But since his patch did not apply, I just dumped what I got 
so far in case the existing stats might be useful anyway.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
