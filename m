Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DCA4FA722
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Apr 2022 13:16:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nd956-0006mY-4z; Sat, 09 Apr 2022 11:16:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nd954-0006mR-Of
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Apr 2022 11:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Lj1Z+jCyu6vB/7iyhsi5yS1LxWUMWWsBX88IFcpP4k=; b=LwzbNBXxCUsjva16sDUxaUU5oy
 JVToGcVN3OQymABvY6lJArp0OV2X90jm1m5RqsEeKKQQvZvA+TVkRrq93aYyW7MXA2CpdTXcn98Ah
 Myd+92cQPafkLQ8tyTYG2uQ4uxRRPBpD+xeQc6bL869fVAbHaalmJil5vwH1F2MMJnPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Lj1Z+jCyu6vB/7iyhsi5yS1LxWUMWWsBX88IFcpP4k=; b=gKgrb4JRwtOi7+PwKRfmfngRT/
 v3LprtvBuVKw4KLDI+lq7uNLNJ6kDRFwmrnB+e9cnp+KwyGdzJVviMVxm1qUsg1s6+lbR/X70LLe9
 OU4LDizTLcKHXQrAKuz2I0YZaR+jJqKliPau4cte4LXXJn7Jqa6G8DjThbD8r0pguYMs=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nd94y-0006lV-OJ
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Apr 2022 11:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=4Lj1Z+jCyu6vB/7iyhsi5yS1LxWUMWWsBX88IFcpP4k=; b=SrecTcYcEhY26rYR5koREmj7jT
 gmksjVep7HDC+HsaSmLlbAmgbvSd2X4THoYBoA7aSQPgrneJ/vB9C6w8CUNHm7533hbRsBfzccSgY
 gHF2Jcl4Rxh+zgTucUqRR52vbjALaEO9ppi4kW/6a7gNHWWWh1OltzW87nDKho8MRDQ0uJau+/wTN
 t5AIJDsJkzSaO5wOXNtAwRuO3Pwvq0H4g2UitEUNinhzKikoqdQ2EnUidtQi6OE0jF64BGsB8jNsO
 VtX9LDtxUYoMLUtlxXv6iiO3gaEUzN8CoWgOixP3LtiRdK6eoAiqRSY5PfDKiAm6O3Sr64I7PRrdc
 A4+xnEJChkhY+wulGIXBGvjlPoUnM3UCRwkMWHnwEWCLpQZVMkLqtVKK8ZWpl/lfch8HCRLbDBTB6
 m/XpsGlgX3X2FiTTMJpzc1fDVEatQcWTdR4AA70c8mt96m3gZK8eMJTqwK5GxQmyIKyu2ZQr/WFlq
 YkJ8/gZu2jW1eRo2orDldo8ziGO5iB7cCyU/8my4LHSlbHwnaaZbvciEgXB+ItIn8TAGHI4IhtA48
 9JPe+e1eumlZ2Vwg/93ZoWHBWEKPZHeWLuoup+G7IYK+GYQ1pTdPw9E+8WFo51kke1YkIJH0HfQt6
 FlUVIvuSGG7ESBasUlPcGUp+R59S4lN/+Veh5BJRE=;
To: asmadeus@codewreck.org
Date: Sat, 09 Apr 2022 13:16:11 +0200
Message-ID: <9591612.lsmsJCMaJN@silver>
In-Reply-To: <3791738.ukkqOL8KQD@silver>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <Yj8WkjT+MsdFIfwr@codewreck.org> <3791738.ukkqOL8KQD@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mittwoch, 30. März 2022 14:21:16 CEST Christian Schoenebeck
    wrote: > I made some tests & benchmarks regarding the fs-cache issue of 9p,
    running > different kernel versions and kernel configurations [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1nd94y-0006lV-OJ
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 30. M=E4rz 2022 14:21:16 CEST Christian Schoenebeck wrote:
> I made some tests & benchmarks regarding the fs-cache issue of 9p, running
> different kernel versions and kernel configurations in comparison.
[...]
> Case  Linux kernel version           .config  msize    cache  duration  h=
ost cpu  errors/warnings
>
> A)    5.17.0+[2] + msize patches[1]  debug    4186112  mmap   20m 40s   ~=
80%      none
> B)    5.17.0+[2] + msize patches[1]  debug    4186112  loose  31m 28s   ~=
35%      several errors (compilation completed)
> C)    5.17.0+[2] + msize patches[1]  debug    507904   mmap   20m 25s   ~=
84%      none
> D)    5.17.0+[2] + msize patches[1]  debug    507904   loose  31m 2s    ~=
33%      several errors (compilation completed)
> E)    5.17.0+[2]                     debug    512000   mmap   23m 45s   ~=
75%      none
> F)    5.17.0+[2]                     debug    512000   loose  32m 6s    ~=
31%      several errors (compilation completed)
> G)    5.17.0+[2]                     release  512000   mmap   23m 18s   ~=
76%      none
> H)    5.17.0+[2]                     release  512000   loose  32m 33s   ~=
31%      several errors (compilation completed)
> I)    5.17.0+[2] + msize patches[1]  release  4186112  mmap   20m 30s   ~=
83%      none
> J)    5.17.0+[2] + msize patches[1]  release  4186112  loose  31m 21s   ~=
31%      several errors (compilation completed)
> K)    5.10.84                        release  512000   mmap   39m 20s   ~=
80%      none
> L)    5.10.84                        release  512000   loose  13m 40s   ~=
55%      none
[...]
> About the errors: I actually already see errors with cache=3Dloose and re=
cent
> kernel version just when booting the guest OS. For these tests I chose so=
me
> sources which allowed me to complete the build to capture some benchmark =
as
> well, I got some "soft" errors with those, but the build completed at lea=
st.
> I had other sources OTOH which did not complete though and aborted with
> certain invalid file descriptor errors, which I obviously could not use f=
or
> those benchmarks here.

I used git-bisect to identify the commit that broke 9p behaviour, and it is
indeed this one:

commit eb497943fa215897f2f60fd28aa6fe52da27ca6c (HEAD, refs/bisect/bad)
Author: David Howells <dhowells@redhat.com>
Date:   Tue Nov 2 08:29:55 2021 +0000

    9p: Convert to using the netfs helper lib to do reads and caching
    =

    Convert the 9p filesystem to use the netfs helper lib to handle readpag=
e,
    readahead and write_begin, converting those into a common issue_op for =
the
    filesystem itself to handle.  The netfs helper lib also handles reading
    from fscache if a cache is available, and interleaving reads from both
    sources.
    =

    This change also switches from the old fscache I/O API to the new one,
    meaning that fscache no longer keeps track of netfs pages and instead d=
oes
    async DIO between the backing files and the 9p file pagecache.  As a pa=
rt
    of this change, the handling of PG_fscache changes.  It now just means =
that
    the cache has a write I/O operation in progress on a page (PG_locked
    is used for a read I/O op).
    =

    Note that this is a cut-down version of the fscache rewrite and does not
    change any of the cookie and cache coherency handling.
    =

    Changes
    =3D=3D=3D=3D=3D=3D=3D
    ver #4:
      - Rebase on top of folios.
      - Don't use wait_on_page_bit_killable().
    =

    ver #3:
      - v9fs_req_issue_op() needs to terminate the subrequest.
      - v9fs_write_end() needs to call SetPageUptodate() a bit more often.
      - It's not CONFIG_{AFS,V9FS}_FSCACHE[1]
      - v9fs_init_rreq() should take a ref on the p9_fid and the cleanup sh=
ould
        drop it [from Dominique Martinet].
    =

    Signed-off-by: David Howells <dhowells@redhat.com>
    Reviewed-and-tested-by: Dominique Martinet <asmadeus@codewreck.org>
    cc: v9fs-developer@lists.sourceforge.net
    cc: linux-cachefs@redhat.com
    Link: https://lore.kernel.org/r/YUm+xucHxED+1MJp@codewreck.org/ [1]
    Link: https://lore.kernel.org/r/163162772646.438332.1632377320585505353=
5.stgit@warthog.procyon.org.uk/ # rfc
    Link: https://lore.kernel.org/r/163189109885.2509237.715366892450339917=
3.stgit@warthog.procyon.org.uk/ # rfc v2
    Link: https://lore.kernel.org/r/163363943896.1980952.122652730464941968=
9.stgit@warthog.procyon.org.uk/ # v3
    Link: https://lore.kernel.org/r/163551662876.1877519.147063916955532041=
56.stgit@warthog.procyon.org.uk/ # v4
    Link: https://lore.kernel.org/r/163584179557.4023316.110897623046576443=
42.stgit@warthog.procyon.org.uk # rebase on folio
    Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

So Linux kernel v5.15 is fine, v5.16 is broken.

Best regards,
Christian Schoenebeck





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
