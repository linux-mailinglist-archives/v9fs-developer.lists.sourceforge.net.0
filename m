Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4671651B15C
	for <lists+v9fs-developer@lfdr.de>; Wed,  4 May 2022 23:49:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nmMs9-0006r4-2i; Wed, 04 May 2022 21:49:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nmMs7-0006qu-I7
 for v9fs-developer@lists.sourceforge.net; Wed, 04 May 2022 21:49:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u5EzJCGt1bErRRL17AVGrTn+Rx5euZvZx9/3VtmBl/I=; b=LLiTl7QemZt1YTYGvbGxVAroBq
 hTSfc0tp9hfmi1veo0lYIgPTlCd85QaIxeJKbOVPIzEeSVLI7gHHo3fkxDYN7v8aYkOGps+QZytVu
 o59bDMccBK80ibpI/CoblEdqw0AS/dBn/59qpG3a08ja/zckxgVPHjEJ0kD8tDdB0AaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u5EzJCGt1bErRRL17AVGrTn+Rx5euZvZx9/3VtmBl/I=; b=KkzpQSuOKDJ343IzBq5MY+stXK
 VLhiJEAQHi9DMcShEcoh+RZAe+wRoGqIv7ksUXB8KENuPlHqN3LfFqnxnwYYzFCp2wSiQxs1OUJb9
 YdYYUxltUTmcuiPcRtkravO85GtR15CcX3BcVDS1KNgxll/zuvm/LBTlsvuaTG9YOoyQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmMs4-001UFR-M9
 for v9fs-developer@lists.sourceforge.net; Wed, 04 May 2022 21:49:23 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D8375C01E; Wed,  4 May 2022 23:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1651700950; bh=u5EzJCGt1bErRRL17AVGrTn+Rx5euZvZx9/3VtmBl/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xevsfCukgGD/UgrKS0F+HuWDBgHAZPMM1JT5Kqd5ZZfBU81TjAnFttFP42nQ8rIcu
 ol1P3n6y/ktfAUwolxNj45SZUnCgqhRhkwYWoSCogsMFmDRr4LtRRLliiIAySldQKM
 IoHrD9132/7D4p634KQRd96dpSwbM3xAHNHfEVbuM603wJxoNDpbj61jrUCIrvE/4d
 Z+QpML04BV4I2PajkVAcXiUWw8VpODtO9ct9V+piwY0G9wavuYLCoTFQ7NpQyFMfEr
 J5gs1KkTtSZU3vuJWS+wlX6dV6hWbCJ6uOOiiRFTFwLEuSHHfPRGcmj5cnEyOV+Ml5
 cOhzSHaZ+MEcw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1B718C009;
 Wed,  4 May 2022 23:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1651700950; bh=u5EzJCGt1bErRRL17AVGrTn+Rx5euZvZx9/3VtmBl/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xevsfCukgGD/UgrKS0F+HuWDBgHAZPMM1JT5Kqd5ZZfBU81TjAnFttFP42nQ8rIcu
 ol1P3n6y/ktfAUwolxNj45SZUnCgqhRhkwYWoSCogsMFmDRr4LtRRLliiIAySldQKM
 IoHrD9132/7D4p634KQRd96dpSwbM3xAHNHfEVbuM603wJxoNDpbj61jrUCIrvE/4d
 Z+QpML04BV4I2PajkVAcXiUWw8VpODtO9ct9V+piwY0G9wavuYLCoTFQ7NpQyFMfEr
 J5gs1KkTtSZU3vuJWS+wlX6dV6hWbCJ6uOOiiRFTFwLEuSHHfPRGcmj5cnEyOV+Ml5
 cOhzSHaZ+MEcw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 3bcfa5ec;
 Wed, 4 May 2022 21:49:02 +0000 (UTC)
Date: Thu, 5 May 2022 06:48:47 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YnL0vzcdJjgyq8rQ@codewreck.org>
References: <YmKp68xvZEjBFell@codewreck.org> <1817722.O6u07f4CCs@silver>
 <YnECI2+EAzgQExOn@codewreck.org> <6688504.ZJKUV3z3ry@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6688504.ZJKUV3z3ry@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, May 04,
 2022 at 08:33:36PM
 +0200: > On Dienstag, 3. Mai 2022 12:21:23 CEST asmadeus@codewreck.org wrote:
 > > - add some complex code to track the exact byte range t [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nmMs4-001UFR-M9
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, May 04, 2022 at 08:33:36PM +0200:
> On Dienstag, 3. Mai 2022 12:21:23 CEST asmadeus@codewreck.org wrote:
> >  - add some complex code to track the exact byte range that got updated
> > in some conditions e.g. WRONLY or read fails?
> > That'd still be useful depending on how the backend tracks file mode,
> > qemu as user with security_model=mapped-file keeps files 600 but with
> > passthrough or none qemu wouldn't be able to read the file regardless of
> > what we do on client...
> > Christian, if you still have an old kernel around did that use to work?
> 
> Sorry, what was the question, i.e. what should I test / look for precisely? :)

I was curious if older kernel does not issue read at all, or issues read
on writeback fid correctly opened as root/RDRW

You can try either the append.c I pasted a few mails back or the dd
commands, as regular user.

$ dd if=/dev/zero of=test bs=1M count=1
$ chmod 400 test
# drop cache or remount
$ dd if=/dev/urandom of=test bs=102 seek=2 count=1 conv=notrunc
dd: error writing 'test': Bad file descriptor

... But honestly I should just find the time to do it myself, this has
been dragging on for too long...
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
