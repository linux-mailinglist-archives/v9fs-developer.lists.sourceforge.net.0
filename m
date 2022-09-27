Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9397F5EC59E
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Sep 2022 16:12:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odBJT-00054t-Uj;
	Tue, 27 Sep 2022 14:11:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1odBJ4-00054h-7Z
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 14:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VbbF7vZK7ninv1719Isw2uAjRQZdCgxwYIQDJl7ri+c=; b=TP9motDOVY9vmAkowkbYtC2Fhd
 tywlWUi5pKCs9FuGpOasmZvH0dHQbr51mHc7DhBtjqleyYSEZRatxMN8vlp4dYKOUTXYdY81DliCu
 KmbJtbQRqC3cQVfEX2/rjA3K261ZHV7NBcM298dJGoWt96gMNzI0bvNNKfywJi+doMds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VbbF7vZK7ninv1719Isw2uAjRQZdCgxwYIQDJl7ri+c=; b=ELVdRD4D2mNidFJdxUZTyR6JiO
 VW3fn4vWjj+a70L5qf+E0UqBn0CnRk4XJWNH0qSunTkOFbRrOEpAJjel6gzGQYQI5VSRY19PD97Vr
 dOmYBKaKmZauFpoouDPOKiYnw05CyxO27gWjw+EPmSwP8BVRhFC9vEJktNJ40TihMCJ0=;
Received: from sonic308-14.consmr.mail.ne1.yahoo.com ([66.163.187.37])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odBJ3-004aGP-Ck for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 14:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664287883; bh=VbbF7vZK7ninv1719Isw2uAjRQZdCgxwYIQDJl7ri+c=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=XP9LWajkoYh1y8U0FtfjPIqqz/UcsswOAOcq+GbnAhFAz3svv6qLtuLRVjdfX1fDVr3iWsD7K/bo3vszCjxs7bDuZz6hboDHW7/jvkJj1+R67MGUyg/a4K4x65Tslj38X6jLOgcMwoFHzCVvAJjUYV3OmrAFd1BcaElUhT7gXRmFaCJ178r0bYgse9IV7iZ4U25d5XKiL575cUfYd0vDCAeYKAf1js+NeRy52mrrmHOTQ3YdM/cKexYGK2hkXwOlWTMuFTTiYUhlxbaYvrVDYxB503mCBNd+eg5Uei+ktaDNMDuaVXh7EGJzDJxX136Cwsjgm2Jmwx0A0y41VtJZtg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664287883; bh=gQcP6WJuJItVDood1xIg8QPItxtymCASPfvXoF9A/fT=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=cQ4bwcBOrLMLBv9x6xrce+/EcEGYAyZp4CKTzELim1NozExCR7eIYc+qRh5Gaar0sFU0skd24DkyOP6D1d6Bh4i8MIOpzI2950UjX5KJTridF1doPa4MDHJaGEsMoiSk5LmiV81lb/NdcdxKJvYEJ5HNkigG1wDZdH87vXaTUK6mPdqURPtBcskFkaU8VH216lIwS910T0oMUQnf45ChTkmDuhDkG5zRtwXKd/ggbpV/aXQHHUZFvAY252cnAJ4dQZWGnM5C+4fxYjQW4BGS7vgG89wL3+REEdywPA2Mg3NGajfEr5Z4eO6MpGJBglRoNGHYwmGc3C5mOa0o8ugF7A==
X-YMail-OSG: b0mai7cVM1keEOxbDY7kO4AYtPHDcMmt1OO3HgbD2YLEE9Tr8EPeNHlvo.pXD9c
 aBh0Kn0t.9uI6up1CSYEC4HMtpsX0f07rvNRN3I8BAHo5Jmoy_W7EPzw6oJh5yudl6Z_eKvhRIJt
 dzdqYltYE20SOcBvl58Amwq4gHuS_mID_yt27RIm1M2WWUtQhh0RR.rWP2Jer_9egxqpty.FSlDx
 nuQMQSW1H5R._YWLUhpdmyef2AdRdski8tecW7s_zE6JsWr09mQ3r.JtHa_IgdZElaUOdXBjh1eR
 d8_q9P9.hGHQyLKGCUD4v3sS9FxNjspI.dHSAEsdsCJdrTCCqHaUfcYM0.QjXi83fTsV6ufQJePF
 _1rUvaSikUNRZbuQeEI24bQzjsseeVkmpOB6unM2KF6XWShZvosMn488t6UHEwYj8kXUJO5UygOz
 W2djyNhSBqrb2_uYV3CztoFkEWqAoYt9pYeb7BJaVnZAYw4C0Z6LTpWr1xvoxgh.kwkEl8V0C8OJ
 ugMrNaOD3DCXKlZcfE6VKl0JBXiaZxCimbmSP0nac1e.ADGLuFUw84CBW1AmNKL1jpWRQA7fs4ft
 ZzeBw7j3CmiXQQQPlPVGiaNw02AkyTTGKQFJITYkhYh9Lx5UuBKx98cllaGyqbeNgGYTooCoCDwY
 6nd3HNfT9Pri7vI2OClGWcAppGamIW6ffcbtRoBFceMPsqrLCuZtsO7iHkbJ0KWSdc7wfpVKs3Cl
 F97bJlrS95LkYTVJiZo4iuvuO74J7B2mWBrGqfbteADwbmwEJwEadQBhxcJs8sXnAqrgHZITY.Br
 eBBLFNCoWT6zPWFKmCu0yiVK9R3b0HlnED_ohaIegP9Evu6YQY3Bfov3UXPGOcM1Rq3Qts.YQPhM
 TGEJTw0wy4VD7srs97n.mTOCA6Iwp7khP.YguSfWOhNQVVMCI5Nrp6Rx9g1IVdDGLX72idZcdGLK
 3REBBqOuQDMiMxQ63HCW667wGvOjMK5gMXEb1NGbHi26pqjSeZqEmU_gTH5TdE_3Y8qrRnjxr_vk
 aPwrYNVIuPlQFamPHBMFe0QPSoWv8xzGeweEtAhZTUas5GkZkN3Vt_u2SOzbNFgArX815jPbyVjq
 dTR43Z_oHkNf7lzFospdTk5j1w85FjJCQfwJ4W6BQfmBxPmVJm09wiHVQtZ1bec06C_IyPhrd6zn
 q9n34af.98ddo.0AbKvhBhc9TMQwKQmQjOf5vwRBXOaVQt1UGdb46VJW7GCxYb03ca9NigR2o9mx
 Rv_mj5DZiIRjUIxGdK0r5Wus.VoEWXz3aYuFjteTJL.BJH4_WUDzMB3AxXi.wpCOk4nkvYsJktM8
 jGcTBsYsVF2j80r3a_U38nfl9TwVdMR12lv1ExlkdXTguMDHHOR3S1gnwKUYA1FuIzZytYgHkOQ3
 QeRlN9LJokZKnTQdSRGz.xxieT7EK8TPp_bNEIbnO9mfc6KnCm9FUpsn_V5eSv0Afo_ess6kliES
 o718WG4zHelpSxVAjk4V3dgq5Km_XBFL4cvWvOAF3dCPa4mfeiaAIi3SHCmAv3V5Uua95HpT1DcS
 jGKUNHz7hLRcSgj8SWw041e5EqaABlgf5uJVJ._mol3SpS6cX05VJf0GrFZSAEBSxr2lqiVos1G4
 Ar9p_Uxil_AV1q7hXVm0yi2pOYMkSsKrJwwWq.fDiak17L7a1OCypzfQe9GBUJuv.x4Qjc0OxdBg
 YssAApAX12qq1uJ4LLkwZoOqoea7b1qkDkUOJDCj0bWNKFscbdvT0H5N7otCI7CP6q6CiPd74xWS
 LDnHliAONsLNdj4.23nDL_J3tPvyRljTnqRji5m9a2UPkWpA1M7FmFJUpsSwnxC6qNZ6tH0XPYMS
 qmUbiYuOEkXqTwMMYppzyMPZoLHXKkcTVGZMiM7YJ_wfLnQMzMDp2s0XlbT_AfvmtHmF4bn3Tw.8
 w4Y6Vre5.yc5ShF_xiWxcR1gJGakh6J_nRV1OUIv4tkN8K6GHpXK8IdHPFLKJ8max76JzbXs.hUs
 RdH_AZYQzpYs2wUg2L7uSU_kBNMZgcWzjSeyRZl2W0EXjLDrP24VV4oQzgJuGkqxzB5uAgsEa4kY
 dlbwzA65Rxta5NW4xPxi5ikW5rFdCuD39t8KnCHT0f0evm6MK.PvrpFwAgQPWUOuZloGs5UEjSyc
 D1MBQ0tCtoYjxJ9RI_zNpLMJ37qG0QZNJr1MveXpKVvWxNy4qYyBCsdgEtiwtfnM5GhypRivykpx
 eECj7kSr1meznWtbMkgNtdTa7pwb_rZ.86RoIH8hBfHXgPua3oW3yPaaRSMK9Gv90bPnon1qtuqv
 NtJNUoh5WwEdisXrpZV2btBm.RqXUPy8R
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Tue, 27 Sep 2022 14:11:23 +0000
Received: by hermes--production-bf1-759bcdd488-njfbl (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 7ae96f197d73b97f0f772f8199eec96a; 
 Tue, 27 Sep 2022 14:11:20 +0000 (UTC)
Message-ID: <a0cf3efb-dea1-9cb0-2365-2bcc2ca1fdba@schaufler-ca.com>
Date: Tue, 27 Sep 2022 07:11:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>
References: <20220926140827.142806-1-brauner@kernel.org>
 <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
 <20220927074101.GA17464@lst.de>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <20220927074101.GA17464@lst.de>
X-Mailer: WebService/1.1.20702
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/27/2022 12:41 AM, Christoph Hellwig wrote: > On Mon,
 Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote: >> I suggest that
 you might focus on the acl/evm interface rather than the entire >> [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.187.37 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1odBJ3-004aGP-Ck
Subject: Re: [V9fs-developer] [PATCH v2 00/30] acl: add vfs posix acl api
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
 casey@schaufler-ca.com, linux-security-module@vger.kernel.org,
 Seth Forshee <sforshee@kernel.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 9/27/2022 12:41 AM, Christoph Hellwig wrote:
> On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote:
>> I suggest that you might focus on the acl/evm interface rather than the entire
>> LSM interface. Unless there's a serious plan to make ima/evm into a proper LSM
>> I don't see how the breadth of this patch set is appropriate.
> Umm. The problem is the historically the Linux xattr interface was
> intended for unstructured data, while some of it is very much structured
> and requires interpretation by the VFS and associated entities.  So
> splitting these out and add proper interface is absolutely the right
> thing to do and long overdue (also for other thing like capabilities).
> It might make things a little more verbose for LSM, but it fixes a very
> real problem.

Here's the problem I see. All of the LSMs see xattrs, except for their own,
as opaque objects. Introducing LSM hooks to address the data interpretation
issues between VFS and EVM, which is not an LSM, adds to an already overlarge
and interface. And the "real" users of the interface don't need the new hook.
I'm not saying that the ACL doesn't have problems. I'm not saying that the
solution you've proposed isn't better than what's there now. I am saying that
using LSM as a conduit between VFS and EVM at the expense of the rest of the
modules is dubious. A lot of change to LSM for no value to LSM.

I am not adamant about this. A whole lot worse has been done for worse reasons.
But as Paul says, we're overdue to make an effort to keep the LSM interface sane.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
