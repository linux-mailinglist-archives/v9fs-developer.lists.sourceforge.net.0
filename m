Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EE94E80D8
	for <lists+v9fs-developer@lfdr.de>; Sat, 26 Mar 2022 13:36:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nY5ez-000725-5C; Sat, 26 Mar 2022 12:36:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nY5ex-00071y-U6
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 12:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e2bXraZC1MZ6r0WNb+kmC83YHU78suKj4HNBRd+g+tU=; b=RAqsO2OH9bbEh/WpzuGQnwUuLh
 8ZiMU7EW9KvN++KKGi5FVFHfWj7jNDWvQXslnaoUkAvyx7WQl7mN6jwXM2EcTL/5m1nSbhoRdwOu0
 DjkExUwM0zhodi7CfqfEQLFQUNkagfftLv5SEJ4FWDWhBzaHMkl2MUG9jkcnXw6E86BY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e2bXraZC1MZ6r0WNb+kmC83YHU78suKj4HNBRd+g+tU=; b=NEWEOC+Cm/o2aP2+YES/rvzRxX
 6OeoAQZKuoow+PvA9ntY5X7NtHeO+2r+/7spLCiRSY8DNuJYMTa8ltWMk9aQetLslRjQz8lTp38O9
 UgdLecjFBp2YFK3toReQBUXY4PbI42qDAPR4Nlo1PCX7ajuNMsvlitGQnouyQQGPzNTE=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nY5ev-0001OC-Lm
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 12:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=e2bXraZC1MZ6r0WNb+kmC83YHU78suKj4HNBRd+g+tU=; b=W4O09IqdLN4E6xqnWRKpC0vaSF
 XBVEVG4v7m2iYMczRlDpSC92tbckxn/5SWO1xk7ThFI8/K0l2DtxCJ27OGHi9PRGYa0a8Y8Ofciza
 /sRsfq5044BOjqWD/HMTWQfljLMze3UL/03/bnyUsPHXpNVREUeh5D3RRBreveMcDYirPlcSyq4+L
 zVUQrRYeQJKZ7DMca+7JPKMUSd30xBjB6hzXYcJYXjH0G+01oC915R0LFNQYHWqWvLFj2HcfmJRPj
 b0bIqhNmg3TmTra6BwyeMvgJY7eTvLuhaOpqh1680y0S7oGWR5HBa/qThLBk/gKKiKfr5b6qwOWHo
 BGHueX9XDF7EyclhrnoEVlfzqW9MN/kpakkFcQEoOBt6C3gG1xWL4pF+l8mmQPw14blyyrNN76/el
 BZJpUgCCKhHjwMw3uXGJE0mYwN8uKk8yTshtp0Ge648P6f34Ru1HVrx7TVtU6vT5B1AIsHQif+wnD
 Gpyg5rg8P6dSKGyUJFuOs+R1ozCdwGCJR6uzwhcKoBhLv3nrikLpBUNDVfpU0eaHy5nPte9ZJm+i6
 Fi3Jev5d05ri95PtcnBrFqwAOwHPQ9UiHwCKzH9/IpoPEssbpQ+t8kyCEZv7lQC0OKzSHWuYTqrCr
 jXzrEJN7QcgO4ZXQM2poUlUV+nwLtzDowWlRZJSss=;
To: asmadeus@codewreck.org
Date: Sat, 26 Mar 2022 13:36:31 +0100
Message-ID: <2582025.XdajAv7fHn@silver>
In-Reply-To: <Yj8F6sQzx6Bvy+aZ@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3597833.OkAhqpS0b6@silver> <Yj8F6sQzx6Bvy+aZ@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Samstag, 26. März 2022 13:24:10 CET asmadeus@codewreck.org
    wrote: > Christian Schoenebeck wrote on Sat, Mar 26, 2022 at 12:48:26PM +0100:
    > > [...] > > > > > Signed-off-by: David Kahurani <k.kahura [...] 
 
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
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nY5ev-0001OC-Lm
Subject: Re: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>,
 syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com, ericvh@gmail.com,
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 26. M=E4rz 2022 13:24:10 CET asmadeus@codewreck.org wrote:
> Christian Schoenebeck wrote on Sat, Mar 26, 2022 at 12:48:26PM +0100:
> > [...]
> > =

> > > Signed-off-by: David Kahurani <k.kahurani@gmail.com>
> > > Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com
> =

> Looks good to me - it's pretty much what I'd have done if I hadn't
> forgotten!
> It doesn't strike me as anything critical and I don't have anything else
> for this cycle so I'll just queue it in -next for now, and submit it
> at the start of the 5.19 cycle in ~2months.

BTW, another issue that I am seeing for a long time affects the fs-cache: W=
hen
I use cache=3Dmmap then things seem to be harmless, I periodically see mess=
ages
like these, but that's about it:

[90763.435562] FS-Cache: Duplicate cookie detected
[90763.436514] FS-Cache: O-cookie c=3D00dcb42f [p=3D00000003 fl=3D216 nc=3D=
0 na=3D0]
[90763.437795] FS-Cache: O-cookie d=3D0000000000000000{?} n=3D0000000000000=
000
[90763.440096] FS-Cache: O-key=3D[8] 'a7ab2c0000000000'
[90763.441656] FS-Cache: N-cookie c=3D00dcb4a7 [p=3D00000003 fl=3D2 nc=3D0 =
na=3D1]
[90763.446753] FS-Cache: N-cookie d=3D000000005b583d5a{9p.inode} n=3D000000=
00212184fb
[90763.448196] FS-Cache: N-key=3D[8] 'a7ab2c0000000000'

The real trouble starts when I use cache=3Dloose though, in this case I get=
 all
sorts of misbehaviours from time to time, especially complaining about inva=
lid
file descriptors.

Any clues?

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
