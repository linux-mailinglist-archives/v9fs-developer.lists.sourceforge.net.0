Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B7B5E6B96
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 21:14:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obReW-0006ws-81;
	Thu, 22 Sep 2022 19:14:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1obReT-0006wl-Su
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 19:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XSaiYpaysSiPjsIqA9Ch2kSkOcTG2tmMjcJt0RmfDbI=; b=BmaspOVCeugWsExvk1tip4Bfss
 wQTxcQVfO6LWar+mEmUbKnBRcyffuJ5dhBfgy+38I5kz1MFQ4ElnQZdh0TqOJPDui8jXkyEe3Logm
 OH0jzpGcxSbctAS9StVhzRIO+6YZul3sAnwYgIrg8vsrh8WZmO9Cm8lJ5m5e2mYt4B2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XSaiYpaysSiPjsIqA9Ch2kSkOcTG2tmMjcJt0RmfDbI=; b=WwLxKsiTi4hFoAfH2IOIrFez6T
 ZsarCPxP5tqpyk04InkLhoKuvU7//SArlykjLu49gzZOZWdoaxvGSj885MkT2zddRtCUgVtUFxOx5
 +QER2PpacYqgYAahLQA8bxWU0F029Uf+dM8Lyih3fus0e0f4yE/UqfAGiR3fgC5SsOLg=;
Received: from sonic302-28.consmr.mail.ne1.yahoo.com ([66.163.186.154])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obReS-00Gqc7-1H for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 19:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1663874058; bh=XSaiYpaysSiPjsIqA9Ch2kSkOcTG2tmMjcJt0RmfDbI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=ZrH66/ALgBcpX7/JYFdyV8oGrw2Pox/Ph06E38TQy7hctWpkBeoV86GBHye7g7Ld6j8BaPIdsnGWl4RHO0o6q98AWtV0lpeFClqJf2P3yyCUTu84nJ08vo2DMbVUWsFgHjKgiPJ6zI4m8DEL/uAXEghzIpZPuo1e7r5mcgwnUcXYbeSfn6VRvPkuM5aDTpMBIuJ23DW+JyW1AF9hRD+lOyQghu1n8ilJ7s1TrkSqScMef/+IEqgJLe4+cVoGXwXEUofpYiC7JPXC4OcrZ1aA7yA5aNy2PkZYedUAQA66w7qBs/H6uOSveI2XVuSvaqSZqA2/GDI9Fgclqh+jipimRA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1663874058; bh=pMyzQf51sDkU6Bmm0MSZnzWl717JymtEnW8WOb+mEFS=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=gjpbITFfPQ6IzS8QsUhcdIIV0E/goxhWH3gDYNUssNEhtwhH1MCqmSyQuqrGDuCG2jEJ3bdHw85QX99desM/CimOAjJMcK+TmVQk7xTJJd9c1QOWYBY0BackAC9mmza13KQ1SNDXsP+fJdYDAG+MLhm7aV/s2YJr6BDghFfKE+4QKbCavYGaaGyKhpsfFrNKW3UaaAa+63E7Zc7NykyA6bSAMUToOeB4458d8XxFQHo25XNyVDj911avoyPKdoj8HaANxofJUiqwxP7EKDbGDDbrhtOiQpE7TVvQXkCceYDYQdBQkzQ5n7arXgamhWFwL2fLy8TO2xV/2gi45eJOEg==
X-YMail-OSG: cPzkj8YVM1lTlGUwfLddO8J_lcKIjN3_rEGyqDmbc2ooIn4TOPeAyx8F3wm1zNQ
 4wCIHzRK7r3MHULXLyWyfvvPStvq1.LIx.JQe.dnUdIIwyqwEezF8Rn6aUvoZ8a2J_GI.iKtizEr
 NLvKixf1mZ0ZB8HXaeh8jsCgsDF0TF3cAJfhrgQxa4jwJC4nvmch73nTvJTGdNFfvW9eQblqnJx8
 H8.1toYJ509lyvVC9DRIAX5jTYjNBIWf7Ecm5aUo5oBiNoTuP2Bz3cBEOJIvHdGZ7iLthQ6IIBZO
 bA1lY_vFfOHL5K5ltdo6EnvwjB0ySz.42uig8B5WAsLFjlfgGmc96zP_7xNVnQZlw5EGbgO1nnQC
 e8CtRM9sp4GVOCkdkI1bZI_shEGuOVVKAMZ2Y5jNZ3CYWcmacIOu5RxzBTspaviVDLLX3ffAr6jB
 vFo2IZLhYIs1ySyW1dRm5Oo2AQKR9JWX9vTeyyLnBw6b7NVb04WfCVAdyRhshs4X_16.oYXE4IOb
 hn2RZzhGEVzCbW9yt9z.WunB0oB8DT4mkrlIlqj1fqTT6QtR13.7pj1hb80zTfdbZ5z_xEjmXKWt
 D0iZFYjpXK5wQ14op2NyuinHO4o3cXeFx6odPhakHte49NTzvSPuo5.k7gbD5zdGklm10uXn_qJD
 tlfVeF9J3wrYttm0N2I4fOjOxYTrii9WHTxNq7ABJJHqZmI_UwNw54MmWUPFrhyqO05vPBr1uUHJ
 Xp_vegij_ktmZShUfq81LJZhpK.Y9eILq36SY1yBydYATjNAnOsXS7ZoAlF7D8TdnQ.obnPddfHM
 pxUk3yWmqLkU_qv8C5g4nN2U0X0633t8bDXF.nfhIeGr_jwRJOX7rcUqvyLXuSxFbC3u_fF.4B4R
 jslFVa2x7j0ZYzh0eK6tniwN33NcBXSTUz2F8FdhlvIIMdT999p4gCDjSjNuj8dvaxUhOR4O89Cp
 vfgftrTD9N49oD.FvEKFSXFiunHBVw1NU2zbahXulLxB4WiEH_QimHPgubOpJUQox28Zq9Dkyh2O
 mUgZIlXdnYfpJqEdFbkYGbnXn9_Sj0JDq3crOKl6nmzZwYZ2epljOS9R.IEoDRRec0Tki5osk7ke
 oWxKr6sXv1DybS_RGZ3Bra6esk.R1ug6WZJyLClpsod3kqRjFDTe5hCmTNUfI3GG8RpFW2J83oU_
 WL.8ZvEUBHKgoMPBgWiqHsqaKGQxxVmkj7M80CcBslEmqSkw8hMV6jFD78K55EwCSP43bBIUPc3H
 XLO4mB.hDE0N78i3t9VGGR4gSjcdfC.bJlJKe4TuEHhL0Bs_n55g58GwbsaGLHrrltc98x4NfWpU
 E1CXyLtJQncDMTHD9mBLuI7f2kY63I3Dcd7OapOtZHiAFzXW_23x5eXL3FdBmLI6_9XPNzpuzSd2
 tCucFvwHtoQPVWnD5XTKFM9l7wK_0opuCRKsaLN7uySKfWmRHU.w03yKP9rFHmDA9DaukaInwML_
 tp7pLKKWKnmUVTCmUKdWfEEOJuUOHcScZ6qxP1ojEXAL1MbfvDls5AQjYdgcGD16VnxwSuolQ3jh
 s2k6fOz2XVwO3m_iEbkheFlecEu7vQPYDe_noEANXJxM.JniGioxEBDKyyL4Om2H0Zkc58BwM8t2
 qdG4NSJExA2.UeYcsYjAcP5v47bpVyKbyIebx8TV10kwU5Kah78MpTuqMNqpOMjtAod6RsD751NV
 Rqqvys2WxX5q.GYmzuQ6xkTuYQaZOKfura2x6TdYkHKvqhXRNLGbkyht10s2rMQMFo9quMQWSYhw
 r_hKgITC5QeJCei5AjLL3s6uhmBrs_jsNo8JYa2puqdQAdMrP4BaUI09m7iIGbh2I3xoH63MAgYs
 QzAwWzy1uiUlA5Yq5ZuW9O3QdgrAwjHPImJtz_MPTKZv0BLRSWkUEzZTeFRSo.rA49M4UmtilVPv
 qfLsc2wMvaWKxxnLzn7Agrb33agG1KT9mpmETmRwSquTiuShCOM4ZWOwndQexwU2LtNWowPqNcbf
 lwxoGeVvLKd.hpqiazw7m1Tp5lyrH29OQQNDYJqBHLb5MtxAaeKpWeJwNR1ksypQDrDl9eTJFtN8
 a6.hkT0jhzVV5jaeXFjBhGPxlUJoLijCnvd5D8vKGGs6RGAp9DNYltAOmLOdy90JWuIDOiYL4YcK
 qiGaoTonz54GGbwtrQZfIQHzdFCMk7EVRP8ztuFC17pIIoUBAv64TMW29f3H4mRq0X7hivcKva4u
 4xywNM46xH0yOuSl4AOQclKMQyrbH6KpA1QcB0kUPmYAr9DQZtImxjA--
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ne1.yahoo.com with HTTP; Thu, 22 Sep 2022 19:14:18 +0000
Received: by hermes--production-bf1-64b498bbdd-jgj48 (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 7e73fc98ebfe996b033bc0567110ef17; 
 Thu, 22 Sep 2022 18:53:59 +0000 (UTC)
Message-ID: <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
Date: Thu, 22 Sep 2022 11:53:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
X-Mailer: WebService/1.1.20663
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/22/2022 10:57 AM, Linus Torvalds wrote: > On Thu, Sep
 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote: >> Could
 we please see the entire patch set on the LSM list? > While I do [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.186.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -1.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1obReS-00Gqc7-1H
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
Cc: linux-cifs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 9/22/2022 10:57 AM, Linus Torvalds wrote:
> On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
>> Could we please see the entire patch set on the LSM list?
> While I don't think that's necessarily wrong, I would like to point
> out that the gitweb interface actually does make it fairly easy to
> just see the whole patch-set.
>
> IOW, that
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
>
> that Christian pointed to is not a horrible way to see it all. Go to
> the top-most commit, and it's easy to follow the parent links.

I understand that the web interface is fine for browsing the changes.
It isn't helpful for making comments on the changes. The discussion
on specific patches (e.g. selinux) may have impact on other parts of
the system (e.g. integrity) or be relevant elsewhere (e.g. smack). It
can be a real problem if the higher level mailing list (the LSM list
in this case) isn't included. 

>
> It's a bit more work to see them in another order, but I find the
> easiest way is actually to just follow the parent links to get the
> overview of what is going on (reading just the commit messages), and
> then after that you "reverse course" and use the browser back button
> to just go the other way while looking at the details of the patches.
>
> And I suspect a lot of people are happier *without* large patch-sets
> being posted to the mailing lists when most patches aren't necessarily
> at all relevant to that mailing list except as context.

I can certainly understand that. I don't think that the filesystem
specific bits are going to be especially interesting to me, but if
they are I do want to be able to comment on them.

>
>                  Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
