Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A9E268A01
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 13:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8De9rv+gk70LEzIyevb+LT3lGEj6KV1bqI2DrlcyVCE=; b=ReEAvjUVMm6gdW64ce8HacX6H
	f+hLj11pzN6hKEEUhxShzmpha0dyQmVul38/mzFEoYirLk0ERfUm59zixIO2eO3mJGCCxslMFvsNq
	BMiEaEx6ERLLbL+sixTkFUFg27cJJ0eE8225VWiK4Pc++q2/7zAI4EUJw+pPBBQqacjic=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHmdQ-0004pi-U5; Mon, 14 Sep 2020 11:27:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1kHmdO-0004pY-RU
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 11:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=++NQLUetBSLmFRHbsLpXBmOsqS1jQD6y5F/DUjvr1YA=; b=DyReuULC5TahgB4cPx+HZzgT7t
 SKZ2HcVJHVYNQ5r+/ZG89Jh82jCV3RKOuuNdK1SvFmWi7DyaklREHZjKlbAaK0+bl/0K7UDQfMkKH
 /lNPPshkhkg9dGQ9iYbBxtMuZOFzSM82FOj40mRUGDYm04hpZYg9TH+BzhSduB0e2FwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=++NQLUetBSLmFRHbsLpXBmOsqS1jQD6y5F/DUjvr1YA=; b=aivbafu6nMxJZH/xbhw/A640xh
 sTmlvXewyJMEBUArSxR6wkoalxw0EkO+aVxrMONZ3iQj91aFJ+BArYgDpSt0nqIMbLP5Cy5Oc7uvW
 d5YtLiKCTn7gl/gKpr4yTM2fCsQR/HaY/ERIlloYa0zAm/fxIW3je272meYvjS2h152Q=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHmdI-008K5r-B2
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 11:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=++NQLUetBSLmFRHbsLpXBmOsqS1jQD6y5F/DUjvr1YA=; b=lZv5LqkCfhovigLTtCbuQfQHrI
 2asQqCaFUnWxtpt/IjVaApnvHVg8+nq3bJ/xE26Wz/tpJwE1p7h/fQD8S8EAuXiFHtlYNvqnnTmQD
 mrjOMc/LDfNZZtm8UpFmkeyTG1hVzKVCjERiyn/IHm3b1RDymKHg+wxc2HKTVQhRCkehX5rFFyrgc
 0b849hfad8x+A16WS1a2m2AK5MuxGPwB3t42Vx2CctMkU/3M2w9gA+BoWikepYTo2JVRa8fvpKhiO
 QdzKXdvBKY0yUPaua8LHmgYBoVDKkYkxvDu94l0OVOqXLpJ1oEK1SsLDSOgGWkUw1uBCaF69mK04w
 QPRNgCx/BjqKMfjUlsmR+rY9FXOHmtDjowu91kDU96kXHme3ADrAzlaQ0Knwf08X0ccS3ju1OPR+4
 8UE/OHkiKpZAumQ6koiyDUXjxGz8dWgWtOqtYY/TKZwh8XT3j1x0JQHA2S/jjNgnCu4Eu/T0uX31r
 7mEchOl14EG2a5sp6sNToXRVzbT6AfoHX8vZbrD736wxAWRIfGuYZZVqexS3rnX6GpATwSZvwt9Ar
 LrlR9L4SbfwcmQFHpgVmOQCvHV5lwTHEgThWXAfUqZxqiW4GcaDBKhA4XOhpEbJDDa0Iwrk+ehsdo
 OFX+JnKNjgUqqDSyb+d7ye2F3mvdfqNBS3sY/7AVA=;
To: Greg Kurz <groug@kaod.org>
Date: Mon, 14 Sep 2020 13:06:34 +0200
Message-ID: <2828347.d8MXItvaOC@silver>
In-Reply-To: <20200914103546.0f775bcd@bahia.lan>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914103546.0f775bcd@bahia.lan>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nongnu.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kHmdI-008K5r-B2
Subject: Re: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall
 bug
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
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 14. September 2020 10:35:46 CEST Greg Kurz wrote:
> On Mon, 14 Sep 2020 11:37:50 +0800
> 
> Jianyong Wu <jianyong.wu@arm.com> wrote:
> > open-unlink-f*syscall bug is a well-known bug in 9p, we try to fix the bug
> > in this patch set.
> > I take Eric's and Greg's patches which constiute the 1/4 - 3/4 of this
> > patch set as the main frame of the solution. In patch 4/4, I fix the fid
> > race issue exists in Greg's patch.
> 
> IIRC some patches were needed on the QEMU side as well... I'm spending
> less time on 9pfs in QEMU, so Cc'ing the new maintainer:
> 
> Christian Schoenebeck <qemu_oss@crudebyte.com>

AFAICS this is about this old bug report:
https://bugs.launchpad.net/qemu/+bug/1336794

So yes, looks like this also requires changes to the 9pfs 'local' fs driver on 
QEMU side:
https://lists.nongnu.org/archive/html/qemu-devel/2016-06/msg07586.html

Eric, Greg, would there be an easy way to establish QEMU test cases running 
the 9pfs 'local' fs driver? Right now we only have 9pfs qtest cases for QEMU 
which can only use the 'synth' driver, which is not helpful for such kind of 
issues.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
