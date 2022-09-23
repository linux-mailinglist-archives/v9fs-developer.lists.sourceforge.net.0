Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0A85E7E3D
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Sep 2022 17:22:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obkVz-0004VY-NS;
	Fri, 23 Sep 2022 15:22:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1obkVy-0004VQ-AR
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 15:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3VxwWnzu7YWE2ryyAcLAKetejBc3WVJs8HS6TEP/ktY=; b=Z3GYWrlN9oZZUdjL4T58PDUlgs
 eFws5h3Pq2fKFR9uyLe73mS2IrPiUlnMtq2RkCAs/MkRUXrk5WHGNEWjC7UN2JTpdlMZITxIzgh6q
 1EhJNOpXbFLyLTRhBaz4vkSrBYRtNqfI2U9Wr95K5NzS893WUQNUJprcxSYcGyYDbQSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3VxwWnzu7YWE2ryyAcLAKetejBc3WVJs8HS6TEP/ktY=; b=PZQxa28sBTtE60wPC6cgIiDL22
 6CjIAWV/NlljueSIj8+1q22Pm4HsZMfu+b8as0ypK9RxLNCCJ/x9JveUX9U8ag5wPGZRjISLMB5RT
 dAYRjRYPIpdTz1S/n60Tf2dbvpjOqVvpKNe1lvu8XE+4WtHs3OOtxRiFw/HmhElb8l7k=;
Received: from sonic302-27.consmr.mail.ne1.yahoo.com ([66.163.186.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obkVw-0007Tj-4p for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 15:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1663946565; bh=3VxwWnzu7YWE2ryyAcLAKetejBc3WVJs8HS6TEP/ktY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=CU8Iml972Z56daluGOYcseQmreRbeZr8dXTbliicocZgcWDEQgojNYmHmJ6AXown7Ei5OvngpjCBJRrE13VGaZ+gwnpUgRX15N1BonAuE4a+iaM3GzQUzUsc7iCR91zMs8DQcVfw+dZzOuA3DSJj1aaCqMDGGNbU6UawzuRaKvQE0bBm8z8Jk3OVVlFkY69y7Yg5LuB/+O34L5gbOEOyVEW1tK3oBALQDRsG16SIp9Ae2Ay0Dgb0giddIQX+r13S7ucou+3omNNG50LXSNdTf6h+VHHxkTtuHjVKClAp5fZxMrTkU5Ti7wg4L4+LT4OV/4i4nQJoCCZyeXyjCuKFIA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1663946565; bh=KrMBHPaTvDwPP/yPGSrrf2Kkwv910eTOotFf7kLOYAP=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=VY8mWtAKt6DzcnXqiGEHZIFPYs8k7m8RHMOc1FqxAyRYIBawEPJ5Aj8d1lKIKlOATnEwgpto4j3ZA4opcw4BCo0L1mMmN9rv9wGOv7s2ZyI1SGwD6qpPJ0y8zVpQsyAyxjfRZJwi5Clb0Qi00afn4bHsixarzgNlvsVH+wlQN4V/ZIw74bqWXEolhd9earsmZxe/oja+yfag4mmp4RgH8T9l/qpNwIrY4nhUqW5b95P3121H3Y0mUEiI3704bS7QdCPnvKtOQOqzGB9nsscsRDlLEg845p2HULy/6Jahn/B4REdsCw1Ey7lmVQd0KALqiYaU0feoIbFc5z6L5wUtpw==
X-YMail-OSG: UjubnTkVM1mv9.QXvDcRi9OOYAviJWPQcwa1QIvH8.gB7dBfClvmLaoIANx.llx
 oJFDDi2EbFvcAYM59VTvVVvRdjbxWFKjc9O2H1n.Ts7NG2CZQLMGqwOA3f0H1NZlvSMva.3974MO
 VAla3WEp2g6XPkcxaE3I.aZP1Hf_FIlbiXIdTSBJ7W2nFyTPCmel0ouF9hGIucM1HOIBvTppMz1y
 j9oPl4bqoKFFY_Te3oRjO41damiSx_i4mD2D4WAHGJAcyLa4rEvhP1Wm7w71ipRf_Smgxvr0mQGd
 1WjqHwjpv3CfzoAmrRq5QRgfhXw_EYw1HcBflGEBxT4qQKrBsd2rlJz5WCpo6sCd4.EmW93jUAB7
 iTKw9ErbOtEc5ATv7yXGrUsc_Aejl3UHkSUVSBo5F_aRDlSmIs9OptGgqGjR4XzBFwOFMCqtt5EB
 kHk7Ia0vCgPGp83fdhR0TJBw1kEw0.f7WHPPdfy8i5CaHoACBO6xQNAq93oiAWnhSecD.OVrrx_U
 uc89XSFAdAxj2pDZAkm_kA0E3u2EjkWOUmkUTAD1zPAqmJEJaDkKgw_W0OJ8fXYYAl1Jeyjfn5l6
 Wj6pMWa1v6lDIXyuQtL29TrX2HzXMVc7Su7kDhq2RJjlbUzUVoFIZ7C8_6eYic28rVzK45jadMJ8
 bdIOqzXOkL.ljrV4gSQEt6WeQTCrvUvp1SkdLFPHzKSMMqiGeXhjxQ4RdKqS0Lq4nxLKFF.HYNW5
 Uarj3f3928vl72a3fWAPhOBTTtO2.3pWnwUq5zEIYUpzcxKBdBC9ExBsB1gBAnOiNquM73L2QnyD
 dP0RefWJdXpvFHmsbTPwfF1aJedBJluwAnYKyQx.ajNaqqRXtUmDkwbGTbZtBL3Px4SRocx8.fRV
 cglAoaHh_mgkUevrqhiuVBVL9DeWGLRHZlGixnkMGanE_Uh4iN.H6WZIOgRY2byx4KZ.c6GiycSK
 bvMDiEDiW2Z8qb29PUrhipbBCLAiNv.WenV2pPtfIZ0xhbsFMMiHyz5ElnQRdAL4lqucB2Xt7Wx6
 SvRsBK0IBiGm_pdNNHm8a_3.IPDYzW8B2KvS.nE4r2YjInQf4j62Vl7JJbEwYrURGXlqbvqTG7eh
 aKXYgSOLFUOkOwLzk4_4J31L2cOevqTd1f4_iFIiSzGgCrx8QuUMx_9_qByLN6PmpLm2cmKvPUvk
 24.ReRielL8Ane5WYhuXdi4VJKknYuGur.QwvGktBtZaIvFvCQjn2k0FEpDRN2SJzeGR4G1ZvOKv
 GVgbbT5oHjzdmLEeos4uC5ANW63JZEJoasw6trrcmL.Caqbx_ADqEnxWzq3AxT5LdZ5MsB.uAkYE
 dqx1svhr1vomhBHZz60w6to6mvep9tkv09GX7v.Wn1Hkeh3B3JdFzjRFS9KHaAlN8ywqY2FJFlfW
 0W.g8FykdXsI3uS0ODxEdU274RM8WOh6yv9p1hXdDr6OWoRAOquFggMbP4uLaXJ6ytGTSyYO3lVr
 FCZBRFHjSuiixXg28Yq..QerapSoLoyawg1De.etMNjcFRkx9LdZv0yRQVltONf8hqjXCHba91va
 Zbx3oi3m3MQ5gV8TSYAghqKtDXhopib5bVUOWOCu1SZYfROvhwnfxlrSANQ64qzim5BG_CkPZeOR
 DtS3Ve4jTBUyXZ0j88QDE1CUCWHLuVqZe36yTc6OyMJskVn48yDzHh5XrSl0RKDClwzb5A3zCasg
 bdgjYZMJ55g568PS3IXn1EQ8D5F5DqN6goF_QGLZGZTnCWGxOT01Fju7yVhFQpJ7DZKrqyQ2cwIU
 .w6IgUweMjvXYrdFQCtmnArq5zPIXo4X5js.OHzJfMCmDZ7A6.tqwtFjNa9iSsxvi3E1QNTyebJm
 a1HIcrtEakquUlEiA.m5glMSeTaVq1sHbCJDnMF9Lv4d1OcR9ojfAjlatpcj458clcBvY5fvW9.m
 .dce5Aw1Vbn3blUA7I3ZJWA.ayufs4gGi3txH_9wjxojPKFJ0DWVOCMMktkTwBi7PCbv.G0_L7PD
 lGrBNR4V3Q8uINN6v9TKbTuUHmWKRfcFjNRhaWR0tmzjblQ3nrTIwDR8DRnV3_AcuwmJYodfcHS_
 SepUeDTOi_dzn9jLxbo7XzV5cLmxrXhlGfTwSUav5qWC7e4IAjgHUv.27zGpaY5lNReDoSuQWPyQ
 gxKMe3QtAkaFF_r1mTfcUGMiVkY5N7f5qSxNtIJzCb9i6pd2jZ4AqXDmHbUmtvaUGLSg9V4J2ZDi
 KBdOWEZg83QkdYkMXUQkgvML_KwJEszpog.Tg22bNGlWH3zu__vUrLA--
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ne1.yahoo.com with HTTP; Fri, 23 Sep 2022 15:22:45 +0000
Received: by hermes--production-bf1-759bcdd488-59t8g (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 2143238c51abfee5ab4b1faa5aa78f91; 
 Fri, 23 Sep 2022 15:22:40 +0000 (UTC)
Message-ID: <5c702bc1-b976-fc99-f2ac-cc4e6025751b@schaufler-ca.com>
Date: Fri, 23 Sep 2022 08:22:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, 
 "Serge E. Hallyn" <serge@hallyn.com>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
 <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
 <CAHC9VhQRST66pVuNM0WGJsh-W01mDD-bX=GpFxCceUJ1FMWrmg@mail.gmail.com>
 <20220922215731.GA28876@mail.hallyn.com>
 <CAHC9VhSBwavTLcgkgJ-AYwH9wzECi3B7BtwdKOx5FJ3n7M+WYg@mail.gmail.com>
 <20220923085256.2ic6ivf4iuacu5sg@wittgenstein>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <20220923085256.2ic6ivf4iuacu5sg@wittgenstein>
X-Mailer: WebService/1.1.20663
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/23/2022 1:52 AM, Christian Brauner wrote: > On Thu, Sep
 22, 2022 at 06:13:44PM -0400, Paul Moore wrote: >> On Thu, Sep 22, 2022 at
 5:57 PM Serge E. Hallyn <serge@hallyn.com> wrote: >>> On Thu, Se [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.186.153 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1obkVw-0007Tj-4p
Subject: Re: [V9fs-developer] [RFC PATCH 00/29] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org, casey@schaufler-ca.com,
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 9/23/2022 1:52 AM, Christian Brauner wrote:
> On Thu, Sep 22, 2022 at 06:13:44PM -0400, Paul Moore wrote:
>> On Thu, Sep 22, 2022 at 5:57 PM Serge E. Hallyn <serge@hallyn.com> wrote:
>>> On Thu, Sep 22, 2022 at 03:07:44PM -0400, Paul Moore wrote:
>>>> On Thu, Sep 22, 2022 at 2:54 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>>>>> On 9/22/2022 10:57 AM, Linus Torvalds wrote:
>>>>>> On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
>>>>>>> Could we please see the entire patch set on the LSM list?
>>>>>> While I don't think that's necessarily wrong, I would like to point
>>>>>> out that the gitweb interface actually does make it fairly easy to
>>>>>> just see the whole patch-set.
>>>>>>
>>>>>> IOW, that
>>>>>>
>>>>>>   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
>>>>>>
>>>>>> that Christian pointed to is not a horrible way to see it all. Go to
>>>>>> the top-most commit, and it's easy to follow the parent links.
>>>>> I understand that the web interface is fine for browsing the changes.
>>>>> It isn't helpful for making comments on the changes. The discussion
>>>>> on specific patches (e.g. selinux) may have impact on other parts of
>>>>> the system (e.g. integrity) or be relevant elsewhere (e.g. smack). It
>>>>> can be a real problem if the higher level mailing list (the LSM list
>>>>> in this case) isn't included.
>>>> This is probably one of those few cases where Casey and I are in
>>>> perfect agreement.  I'd much rather see the patches hit my inbox than
>>>> have to go hunting for them and then awkwardly replying to them (and
>>>> yes, I know there are ways to do that, I just personally find it
>>>> annoying).  I figure we are all deluged with email on a daily basis
>>>> and have developed mechanisms to deal with that in a sane way, what is
>>>> 29 more patches on the pile?
>>> Even better than the web interface, is find the message-id in any of the
>>> emails you did get, and run
>>>
>>> b4 mbox 20220922151728.1557914-1-brauner@kernel.org
>>>
>>> In general I'd agree with sending the whole set to the lsm list, but
>>> then one needs to start knowing which lists do and don't want the whole
>>> set...  b4 mbox and lei are now how I read all kernel related lists.

Because of commonalities and interactions among the various security modules,
along with the ongoing efforts to enhance the infrastructure and the close
ties with the vfs and audit system, it's rare that the LSM crowd isn't going
to want to see the whole of a change.

>> In my opinion, sending the entire patchset to the relevant lists
>> should be the default for all the reasons mentioned above.  All the
>> other methods are fine, and I don't want to stop anyone from using
>> their favorite tool, but *requiring* the use of a separate tool to
>> properly review and comment on patches gets us away from the
>> email-is-universal argument.  Yes, all the other tools mentioned are
>> still based in a world of email, but if you are not emailing the
>> relevant stakeholders directly (or indirectly via a list), you are
>> placing another hurdle in front of the reviewers by requiring them to
>> leave their email client based workflow and jump over to lore, b4,
>> etc. to review the patchset.
>>
>> The lore.kernel.org instance is wonderful, full stop, and the b4 tool
>> is equally wonderful, full stop, but they are tools intended to assist
>> and optimize; they should not replace the practice of sending patches,
>> with the full context, to the relevant parties.
> I'm happy to send all of v2 to the security mailing list.

Thank you.

> But for v1 could you compromise and just use b4?

I cringe whenever someone says "just".

I'm sure b4 is a fine tool. I'm told mutt is useful. Gitweb is kewl.
But adopting a new and exciting development methodology every few
years since about 1978 has given me a real appreciation for the
raw email approach. I'll wait for v2.

>
> b4 mbox 20220922151728.1557914-1-brauner@kernel.org
>
> This would mean you could provide reviews for v1 and we don't need to
> fragment the v1 discussion because of a resend to include a mailing list.

Right, but I would need to learn yet another development tool set.
I fully expect you'd have v2 ready before I could be sufficiently
proficient with b4+mutt to contribute.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
