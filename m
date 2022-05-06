Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD3351DF93
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 May 2022 21:15:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nn3Q3-0006AH-HO; Fri, 06 May 2022 19:15:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nn3Q2-0006AA-KJ
 for v9fs-developer@lists.sourceforge.net; Fri, 06 May 2022 19:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ku2H0dVFHWUXAOXQaFLrRey8keVDfRjwZFcZZ6wIpDs=; b=W/TxPf5PqH7aqZtwN0aXS3HTUM
 K4XwUGJFuGUUWRBB0rePc5pqcR2JdVNjdghn3btSlgoWaiw/ads23zW0Cf4VAXl4pm8XGGchsB/v7
 oFEHx1Xi15mfrQyQVwRV27Eg/D+SUtF8WWWbWjeXz7x04DwTTBPziWOAW55i6E3/r+l0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ku2H0dVFHWUXAOXQaFLrRey8keVDfRjwZFcZZ6wIpDs=; b=IuIp6gtmwPScVRn9IJ7LnBZJfu
 4GsLrhPrBjPiD6I08V015CE2RBhE/SpgTjkpcKoZqdQklddTC/1diDvW/2gsls4axFWaLwZDKvaoE
 3jO93VOoljVFEk4FlbUyYOvxcaXs4Wg69OgqJv+WAnccL2kJN/cGWkjWjAJkTw7RYn8A=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nn3Q1-0004VT-4Y
 for v9fs-developer@lists.sourceforge.net; Fri, 06 May 2022 19:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=Ku2H0dVFHWUXAOXQaFLrRey8keVDfRjwZFcZZ6wIpDs=; b=N/Pp2hwpFN7sAM2zS2K/pZ3EpJ
 Qk+IfyuXvAryDmhQjt1fr/IdKfckpAoDFPqGRy5lYW+TDiWD7iy+e9toVR/R+TtFrkJ1CYoSHaLAe
 6oGUT05exbMUYvpSwisbtxboW+ciDzCYIDdV+MVHO/NK7WkCr2TYRibxqEO9rHxeLBX8wHEd5UUYX
 /Z/BJGT3PsEXBSugervKTMytMynlSn4W4FXMSWLredYU+r0X840dnqcHEiHuq/NuMNtt5QlQIZEo0
 OC5Q8L4LqVtzqNqVwGmP5ZCgfilXTpa+91IBqbHHyzj4cM4kux2mVRJtuV/zAH/kmdw+7+YsvJlb+
 gDqThM4cAHZ6VuDBFiEY90QIxPAIEIkGOWkmMQEJxLIEgTMj0cmyfJlaJikkmwnberzYByblebhF+
 8Tcexi7nF8naAYKpb1aQpzue5P6u4kSI0Ve3aIDj/LoXrSsEktdaviEl0n2cOomTvBiJOAbS8AJ34
 8h9ozbb0Y+plpt43JUTwppAhi5CCY8MjbnFwC/HlqJJwAzNb+uUzKUCzo5Wo0dgWQrSsaQHhPjOr6
 xGusBwbWn/de3G8RB3wd4zRCtJR+U5j3on4y/6hFuIj+1OXw/+AmpfUsWJFLvhAr4W9ZT6cE1cFQR
 5dF9YfcStw9CrFhYlpivmpUSdPM7vjNTbIXj9BbgU=;
To: asmadeus@codewreck.org
Date: Fri, 06 May 2022 21:14:52 +0200
Message-ID: <7091002.4ErQJAuLzZ@silver>
In-Reply-To: <YnL0vzcdJjgyq8rQ@codewreck.org>
References: <YmKp68xvZEjBFell@codewreck.org> <6688504.ZJKUV3z3ry@silver>
 <YnL0vzcdJjgyq8rQ@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mittwoch, 4. Mai 2022 23:48:47 CEST asmadeus@codewreck.org
 wrote: > Christian Schoenebeck wrote on Wed, May 04, 2022 at 08:33:36PM +0200:
 > > On Dienstag, 3. Mai 2022 12:21:23 CEST asmadeus@codewre [...] 
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
X-Headers-End: 1nn3Q1-0004VT-4Y
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

On Mittwoch, 4. Mai 2022 23:48:47 CEST asmadeus@codewreck.org wrote:
> Christian Schoenebeck wrote on Wed, May 04, 2022 at 08:33:36PM +0200:
> > On Dienstag, 3. Mai 2022 12:21:23 CEST asmadeus@codewreck.org wrote:
> > >  - add some complex code to track the exact byte range that got updated
> > > 
> > > in some conditions e.g. WRONLY or read fails?
> > > That'd still be useful depending on how the backend tracks file mode,
> > > qemu as user with security_model=mapped-file keeps files 600 but with
> > > passthrough or none qemu wouldn't be able to read the file regardless of
> > > what we do on client...
> > > Christian, if you still have an old kernel around did that use to work?
> > 
> > Sorry, what was the question, i.e. what should I test / look for
> > precisely? :)
> I was curious if older kernel does not issue read at all, or issues read
> on writeback fid correctly opened as root/RDRW
> 
> You can try either the append.c I pasted a few mails back or the dd
> commands, as regular user.
> 
> $ dd if=/dev/zero of=test bs=1M count=1
> $ chmod 400 test
> # drop cache or remount
> $ dd if=/dev/urandom of=test bs=102 seek=2 count=1 conv=notrunc
> dd: error writing 'test': Bad file descriptor

Seems you were right, the old kernel opens the file with O_RDWR.

The following was taken with cache=loose, pre-netfs kernel version, using your
append code and file to be appended already containing 34 bytes, relevant file is fid 7:

  v9fs_open tag 0 id 12 fid 7 mode 2
  v9fs_open_return tag 0 id 12 qid={type 0 version 1651854932 path 3108899} iounit 4096
  v9fs_xattrwalk tag 0 id 30 fid 5 newfid 8 name security.capability
  v9fs_rerror tag 0 id 30 err 95
  v9fs_read tag 0 id 116 fid 7 off 0 max_count 4096
  v9fs_read_return tag 0 id 116 count 34 err 45
  v9fs_read tag 0 id 116 fid 7 off 34 max_count 4062
  v9fs_read_return tag 0 id 116 count 0 err 11
  v9fs_clunk tag 0 id 120 fid 6
  v9fs_clunk tag 0 id 120 fid 4
  [delay]
  v9fs_write tag 0 id 118 fid 7 off 0 count 39 cnt 1
  v9fs_write_return tag 0 id 118 total 39 err 11
  v9fs_fsync tag 0 id 50 fid 7 datasync 0

BTW to see this protocol debug output with QEMU:

  cd qemu/build
  ../configure --enable-trace-backends=log ...
  make -jN
  ./qemu-system-x86_64 -trace 'v9fs*' ...

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
