Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5CB69BBDA
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 21:30:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTTqY-0004eC-4F;
	Sat, 18 Feb 2023 20:30:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTTqV-0004e5-GE
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 20:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MJagL46Q61+YbfyuoP4/F/MhRpNNtR2aGh+V7psBaus=; b=eyrkzCbIHsWxWoJZD2u9vho1y8
 Z7WGEcPPkwHQV63QtmB1IhNbvi6n5I2Gunf30LYbONJXbV71U9TGrrmYGQsH+kzur83NLM9y+4r66
 hbMS16aUe+TARglK1VkIhRy+8GlGG3n+/bXazx+JK9g6Tf3RNO/vLnomDaJ+u82YyMM0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MJagL46Q61+YbfyuoP4/F/MhRpNNtR2aGh+V7psBaus=; b=hG3ieKD1ucl7+UDSADsHORdPI6
 QkheT20iFDBC6MjaYuhSE++Oxw1TPMUBpmoZdvw64ATSn/DaA2t2aMdHPwwhXZvBO/4N23IJwDhtg
 q91dfXtF6sbrB/N3cgRA7u7ttkqUppQmEXJr+6HMTBAR2nVR1boaDx2xVmesmJuttdBI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTTqQ-0093e7-HF for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 20:30:10 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 3A74AC01C; Sat, 18 Feb 2023 21:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676752221; bh=MJagL46Q61+YbfyuoP4/F/MhRpNNtR2aGh+V7psBaus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VlkQeF7rLAogYl7v6cMOn4v21gvZvYgga67P3u3CadkY6y/0nxU9rxPF32G21DpJO
 Mm0gTlvYqR7+mJCbBbcwkTOuFpOJlbaWCzUygLC2hn85u4p7KhysR4IDVHNnikSYwu
 fj5PNaAHrJoE9d6RUa44OLFWiA5rpbRx2CE4ZS10z07tnHQ7QoA/iztLtPiaKR90Dk
 vLOyRWyAafKNvuiP3JyKIgUg8d18ysImnYglNET+x9GMl6rpuqrXklkPzfv4fcZBGc
 jbtHZ+JroUMrAdA4mve5ZS/IdLAdhmOjg3wap+FzO5VWsspo4+GnC3IQJQnhaZhVI6
 VCrshQkxnsGlw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 52AB4C009;
 Sat, 18 Feb 2023 21:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676752220; bh=MJagL46Q61+YbfyuoP4/F/MhRpNNtR2aGh+V7psBaus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p7vV70phFOoUGW1hQbPmuz6+rHCs1vU5JmFv+0v4QfGpPc9qc+nibWVPkV+VQPi51
 c4UH8COVxpcuFiWJzOyrTN588YpT24Z6XOciECid9MfUa/XcJkZAj7ZpoAjWAACnxv
 oiLPYlLp/2C5mlec0/NmAA/Z5zo1JvBDb3UG7sAbWS/NHeuy8Vax7KKfzpCSTGHWuJ
 B0GzeTK9pSDMSljs7PAw67nG85rKFix0dgA8UOOoGvhRmYjMsaMnmV4snF/nx3yfQj
 aI5rpg76shJoqYzvBQK7LObTXBk+mUgNMd2u9ZlGr7imgNELdItWTrQVoH00UvsRif
 0yeOWPFkzbY7w==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 236bd756;
 Sat, 18 Feb 2023 20:29:51 +0000 (UTC)
Date: Sun, 19 Feb 2023 05:29:36 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y/E1MCTVslQzozEb@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org>
 <Y/Ch8o/6HVS8Iyeh@codewreck.org> <Y/DBZSaAsRiNR2WV@codewreck.org>
 <CAFkjPTk=GOU+2D3hORsGntwYc-OLkyMH4YMSY_ERfBXdkq2_hg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTk=GOU+2D3hORsGntwYc-OLkyMH4YMSY_ERfBXdkq2_hg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 10:40:27AM
 -0600: > This is stupidity on my part, but can you send me your setup for
 > fscache so I can test the way you are testing it? It is the one [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTTqQ-0093e7-HF
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 10:40:27AM -0600:
> This is stupidity on my part, but can you send me your setup for
> fscache so I can test the way you are testing it?  It is the one thing
> I still haven't incorporated into my test matrix so definitely a blind
> spot I appreciate you exposing.

I mounted with fscache but I didn't actually have a backend running when
testing, so there's really not setup involved -- just qemu's
'-virtfs local,path=/tmp/linux-test,mount_tag=tmp,security_model=mapped-file'
and
'mount -t 9p -o debug=1,cache=fscache,trans=virtio tmp /mnt'

In that case, fscache basically acts like loose, except it also does all
its cookies stuff so it's sort of useful to test anyway.


I also have a setup that runs cachefilesd on top but it wasn't involved
here; for completeness if you want to test:
- add an extra disk to qemu
qemu-img create -f qcow2 /tmp/disk 1G
'-device virtio-blk-pci,drive=hd0 -drive if=none,file=/tmp/disk,snapshot=on,id=hd0'
- just runs cachefilesd (ignore hardcoded nix paths, that's my easy way out
of running straight out of initrd without making it huge):
---
if [ -e /dev/vda ]; then
        /run/current-system/sw/bin/mkfs.ext4 -q /dev/vda
        mkdir /cache /var/run
        mount /dev/vda /cache
        echo -e 'dir /cache\ntag cache' > /etc/cachefilesd.conf
        echo 'modprobe cachefiles'
        echo '/nix/store/4vy0z1ygfidfmbzaxblkmzv7j0irhhwc-cachefilesd-0.10.10/bin/cachefilesd -s -d > /cache/log 2>&1'
fi
---
And that's basically it; you should see files poping up in /dev/vda when
you do reads (iirc writes weren't cached through last I looked)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
