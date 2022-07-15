Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C112A5769DC
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:23:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCTit-0007wD-Pe; Fri, 15 Jul 2022 22:23:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oCTis-0007w6-GP
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PA1XLzA+X+7Omx/bLhTMXHBWmn+90LA2dEeJ5jfpAvg=; b=EoOa05KGN4VmE+Lj+gd8648Zsw
 xexoBGabf0YeoHms1yTxb1EvAkoNRz+BNllo8rKTXn/ZepNVXzi+McoH/AT2JzZ7+zRv7IVEsgY4f
 KRnN5n72lqexfPwEZLJY1q8zIahpCKd3tSWA68ZpUP/yjsQqGbJ6Arkb9nvLClSLvDWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PA1XLzA+X+7Omx/bLhTMXHBWmn+90LA2dEeJ5jfpAvg=; b=hvD7G1sQiYyF4P3DeHbz6NqStS
 StRXNkXZfEKZ86VXyhhBXTX+KxZc4S8iNT1qgQCr0rTmFBSoN3SAtvDFg9R3pHgjMSPkIq6rbOfEu
 cWcy1pFP752URKdAI0rcIcRQzVwmT1Cyi4IN0S8ZQUghzDhhf5Yaa/nZtW9E0hA/uln0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTio-000Wg8-0s
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:45 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B8DE4C009; Sat, 16 Jul 2022 00:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657923813; bh=PA1XLzA+X+7Omx/bLhTMXHBWmn+90LA2dEeJ5jfpAvg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WUJBYGl+CgPAzZc8RMrI6fXDv7ua37rO5Pmj7gVOC+1wytTZOnsdCF+B71Q4BtFsO
 PGyg5C8RfUniW5WvH1lgGuOgjmb4sVVm4FP51Gbot9ai36g2kpvFeg08UBoclGoerT
 ybMN8inxYEmOL8J0UjEVdeWW9XD8HHQnFBp5UzbRPWy4mgr2owuVS3C5JL5ydGDHpT
 lLWBlqoUmtjj8u0o+uDMzJoxYpjnX8LMEey2Zbc1vUg2mpGi3f6azj+wHsq+Ih3iEk
 SYSYfvcpZ5YPTgJPL8Bh0/jdWxRZ1OotmInLQNurRTSktIANssTkHHSQJcIPk4Wl9h
 1kHWwUcZumKGg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 246B1C009;
 Sat, 16 Jul 2022 00:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657923812; bh=PA1XLzA+X+7Omx/bLhTMXHBWmn+90LA2dEeJ5jfpAvg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VfUMDNihhK0WiIVpdCa40ke/0w0jNUShNaLNI6EvWrDYSCWqJwrk5xvDhIl8GN7ru
 b46YKkqbsrzLGou3BeuZm1fWLpX5AaUtSn6jq6QHEwoGoJ++4mm/2OEukBTiYtxah+
 b1pUu29AyYq31TQTYSRYrw9XaNrGdDK+i7hXonr3A4yGSJTZZlTy0dMSQ809FRDeb4
 NGCnasGXs0vGCrKYCoW/qHGT2M3Gl4i0teZh9vfFhIUFA00814SicWL83owsUNVHGo
 9igP884sOxZrRwmHhQVrfdC9ZLWynuatSUPyMtzz76xaaff+yz93v0dpmqO0C1y1Vj
 lnkAtAQOJs6mw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 2bb1e746;
 Fri, 15 Jul 2022 22:23:24 +0000 (UTC)
Date: Sat, 16 Jul 2022 07:23:09 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tyler Hicks <tyhicks@linux.microsoft.com>
Message-ID: <YtHozaPd8UV4fRX8@codewreck.org>
References: <20220710141402.803295-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220710141402.803295-1-tyhicks@linux.microsoft.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tyler Hicks wrote on Sun, Jul 10, 2022 at 09:14:02AM -0500:
 > Ensure that the fid's iounit field is set to zero when a new fid is >
 created.
 Certain 9P operations, such as OPEN and CREATE, allow the > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oCTio-000Wg8-0s
Subject: Re: [V9fs-developer] [PATCH v2] net/9p: Initialize the iounit field
 during fid creation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 v9fs-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tyler Hicks wrote on Sun, Jul 10, 2022 at 09:14:02AM -0500:
> Ensure that the fid's iounit field is set to zero when a new fid is
> created. Certain 9P operations, such as OPEN and CREATE, allow the
> server to reply with an iounit size which the client code assigns to the
> p9_fid struct shortly after the fid is created by p9_fid_create(). On
> the other hand, an XATTRWALK operation doesn't allow for the server to
> specify an iounit value. The iounit field of the newly allocated p9_fid
> struct remained uninitialized in that case. Depending on allocation
> patterns, the iounit value could have been something reasonable that was
> carried over from previously freed fids or, in the worst case, could
> have been arbitrary values from non-fid related usages of the memory
> location.
> 
> The bug was detected in the Windows Subsystem for Linux 2 (WSL2) kernel
> after the uninitialized iounit field resulted in the typical sequence of
> two getxattr(2) syscalls, one to get the size of an xattr and another
> after allocating a sufficiently sized buffer to fit the xattr value, to
> hit an unexpected ERANGE error in the second call to getxattr(2). An
> uninitialized iounit field would sometimes force rsize to be smaller
> than the xattr value size in p9_client_read_once() and the 9P server in
> WSL refused to chunk up the READ on the attr_fid and, instead, returned
> ERANGE to the client. The virtfs server in QEMU seems happy to chunk up
> the READ and this problem goes undetected there.
> 
> Fixes: ebf46264a004 ("fs/9p: Add support user. xattr")
> Cc: stable@vger.kernel.org
> Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>

Thanks for the v2, looks good to me and tested quickly so I've queued it
up.
(and thanks all the fixes lately and for the reminder, too many patches
lately I thought I had already taken it... Feel free to send 'pings' on
the list)

Since the next merge window is close (probably starts next week-ish) I
won't bother with a separate PR for 5.19; it's been 12 years it can wait
another week.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
