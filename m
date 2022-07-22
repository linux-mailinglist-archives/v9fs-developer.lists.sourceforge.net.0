Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB5957E8DF
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Jul 2022 23:25:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oF09M-0002yW-IZ; Fri, 22 Jul 2022 21:25:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <amazon@tdxzyy.cn>) id 1oF09K-0002yC-Qk
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Jul 2022 21:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q0mSVeURYdccRlzIFcDcV+jfNVcF+acT3RljFcFiuV4=; b=CRjv9We+n+k0aPDN6gBD2L9MxM
 LMHWSXVSRHCLAk4GQ59GBGnqqc2B7Vw6VZVCZy3GXhBwnVfd7BoIFoMLjj0mL4FXqVA0jzWas/hDo
 jHm+ZlBA7FryzFGxHUMr5kKK4t7weXf++EF6hPTCfBrYVETjkOoPsPx6pF3i7GtCigBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q0mSVeURYdccRlzIFcDcV+jfNVcF+acT3RljFcFiuV4=; b=L
 TkMxjiGKZuQ2wneoP8POJrRvGXqX5IdgZb6eTTkgiSEgSD7Xn/MLvPz+I9G0oqYbiuCpU0hQlWIwS
 9t99qWa2w/R509QEP6Z3ImX8fMvt8EzrnMBQpawwv0/z+AsJ070lgWysUxgXhyLIwHm5ZcdOhg21P
 KCcBbDKMzIM9lVIo=;
Received: from mail.tdxzyy.cn ([194.87.70.92] helo=tdxzyy.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oF09I-007BWj-10
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Jul 2022 21:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=key1; d=tdxzyy.cn;
 h=Sender:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=amazon@tdxzyy.cn;
 bh=q0mSVeURYdccRlzIFcDcV+jfNVcF+acT3RljFcFiuV4=;
 b=KTZVFd8pcAGkvi4K4g6eh8q4+iLB1/NFotm5VKON/92N+qH3Um3FQEDXkhatzhza+aLC3Wn4lUua
 3UTAo/p4Hywt7bu2JvHd6EyzIYGfOrcuollkJucJyiZqsGGiI3A7ticjuwjlUs/e8/Jbta55lDkP
 yEkyZifw2zzaRsJKSQ8ppJ6nypz7qRWesSTNlKtIOaBuqXfYItWlUv8CBTlu9UiXc8DQppiKegaR
 nXL96t7OS77oooraDCqYUskAvIogmMSvPDskqQvezjpy88ehI5dK1h5mKFwlle44WCTlgc6Of1Ek
 yRinsjcJpCcqTygpSrWzxcTGTg8JrLfOrjrl/Q==
From: amazon <amazom@security.co.jp>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sat, 23 Jul 2022 06:01:32 +0900
Message-ID: <004cf98cd6b1$68fdde57$2921d6ff$@amazon.co.jp>
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (tdxzyy.cn)
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  注文履歴 ご注文の確認注文番号： 613-2894642-3368298
    v9fs-developer@lists.sourceforge.net 様 誰かがあなたのAmazonアカウントを使用して、別のデバイスからこの注文を購入しました。
    まだ注文していない場合は� [...] 
 
 Content analysis details:   (5.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [194.87.70.92 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: tdxzyy.cn]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  1.7 AMAZON_IMG_NOT_RCVD_AMZN Amazon hosted image but message not
                             from Amazon
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1oF09I-007BWj-10
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9uLmNvLmpw44Gn44Gu44GU5rOo5paH?=
 =?utf-8?b?44Gu56K66KqN?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICDms6jmloflsaXmrbQgIA0K44GU5rOo5paH44Gu56K66KqN5rOo5paH55Wq5Y+377yaIDYxMy0y
ODk0NjQyLTMzNjgyOTggDQoNCg0Kdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
IOanmA0K6Kqw44GL44GM44GC44Gq44Gf44GuQW1hem9u44Ki44Kr44Km44Oz44OI44KS5L2/55So
44GX44Gm44CB5Yil44Gu44OH44OQ44Kk44K544GL44KJ44GT44Gu5rOo5paH44KS6LO85YWl44GX
44G+44GX44Gf44CCICDjgb7jgaDms6jmlofjgZfjgabjgYTjgarjgYTloLTlkIjjga/jgIFb5rOo
5paH44Gu6Kmz57Sw44KS6KGo56S644GZ44KLXeOCkuOCr+ODquODg+OCr+OBl+OBpuOAgeOBk+OB
ruazqOaWh+OCkuOBmeOBkOOBq+OCreODo+ODs+OCu+ODq+OBl+OBpuOBj+OBoOOBleOBhOOAguOC
u+OCreODpeODquODhuOCo+S4iuOBrueQhueUseOBi+OCieOAgei6q+WFg+OCkueiuuiqjeOBmeOC
i+OBn+OCgeOBq+OBhOOBj+OBpOOBi+OBruaDheWgseOCkuWFpeWKm+OBmeOCi+W/heimgeOBjOOB
guOCi+WgtOWQiOOBjOOBguOCiuOBvuOBmeOAgg0KDQoNCg0KDQrjgYrlsYrjgZHkuojlrprvvJog
DQrlnJ/mm5zml6XvvIwwNy8yMg0KDQrphY3pgIHjgqrjg5fjgrfjg6fjg7PvvJoNCiAgICAgICAg
ICAgICAgICAgICDjgYrmgKXjgY7kvr8NCuazqOaWh+OBruips+e0sOOCkuihqOekuuOBmeOCiyAN
Cg0K44GK5bGK44GR5YWI77yaDQrmlL/lvJgg5qC55pys5qeYDQoyNjUtMDA2NA0K5p2x5Lqs6YO9
IA0K5YyX5Yy65rWu6ZaTNuS4geebru+8ly0g77yR77yXIA0K5rOo5paH5ZCI6KiI77yaIO+/pSAz
Myw2MDANCuaUr+aJleOBhOaWueazlQ0K44Kv44Os44K444OD44OI44Kr44O844OJ77yIVmlzYe+8
ie+8mu+/pSAzMyw2MDAgDQoNCg0KDQpBbWF6b24uY28uanAg44Gn44Gu44GU5rOo5paH44Gr44Gk
44GE44Gm44CB44GP44KP44GX44GP44Gv5rOo5paH44Gr44Gk44GE44Gm44Gu44OY44Or44OX44Oa
44O844K444KS44GU56K66KqN44GP44Gg44GV44GE44CCIOS4gOmDqOOBruWVhuWTgeOCkumZpOOB
jeOAgee0jeWTgeabuOOCkuWQjOaiseOBm+OBmuOBq+OBiuWxiuOBkeOBl+OBpuOBhOOBvuOBmeOA
gumgmOWPjuabuOOBjOW/heimgeOBquWgtOWQiOOBr+OAgeWVhuWTgeeZuumAgeW+jOOBq+azqOaW
h+WxpeattOOBi+OCieWNsOWIt+OBp+OBjeOBvuOBmeOAguOBj+OCj+OBl+OBj+OBr+OAgemgmOWP
juabuOOBruODmOODq+ODl+ODmuODvOOCuOOCkuOBlOeiuuiqjeOBj+OBoOOBleOBhOOAgiDoqbPj
gZfjgY/jga/jgIFBbWF6b24gRGFzaOWIqeeUqOimj+e0hOOAgUFtYXpvbi5jby5qcOOBrui/lOWT
geODneODquOCt+ODvOOCkuOBlOimp+OBj+OBoOOBleOBhOOAgiDjgZ3jga7ku5bjgZTkuI3mmI7j
garngrnjgYzjgYLjgovloLTlkIjjga/jgIHjg5jjg6vjg5fjg5rjg7zjgrjjgpLjgZTnorroqo3j
gY/jgaDjgZXjgYTjgILkuIroqJjjgIzms6jmloflhoXlrrnjgI3jgpLljYHliIbjgavjgZTnorro
qo3jgY/jgaDjgZXjgYTjgILjgZTms6jmloflvozjgIHkuIDlrprmmYLplpPjga/jgZTms6jmlofj
gpLlpInmm7Tjgb7jgZ/jga/jgq3jg6Pjg7Pjgrvjg6vjgZnjgovjgZPjgajjgYzjgafjgY3jgb7j
gZnjgILjgb7jgZ/jgIHnmbrpgIHlvozjgafjgoLllYblk4HjgpLov5Tlk4HjgZnjgovjgZPjgajj
gYzjgafjgY3jgb7jgZnjgIJEYXNoIEJ1dHRvbi9EYXNoIFJlcGxlbmlzaG1lbnTjgrXjg7zjg5Pj
grnjgavjgojjgovjgZTms6jmlofjgavjgaTjgYTjgabjga/jgIFEYXNoIEJ1dHRvbi/jgrXjg7zj
g5Pjgrnlr77lv5zjg4fjg5DjgqTjgrnjgafjga7lr77osaHllYblk4Hjga7oqK3lrprmmYLjgajj
gZTms6jmlofmmYLjga7mj5DkvpvmnaHku7bvvIjjgZ/jgajjgYjjgbDjgIHllYblk4HjgIHkvqHm
oLzjgIHnqI7ph5HjgIHlhaXmiYvlj6/og73mgKfjgIHpgIHmlpnlj4rjgbPlo7LkuLvvvInjgYzk
uIDpg6jlpInmm7TjgZXjgozjgabjgYTjgovloLTlkIjjgYzjgYLjgorjgb7jgZnjgIINCg0KDQoN
CuOBvuOBn+OBruOBiui2iuOBl+OCkuOBiuW+heOBoeOBl+OBpuOBiuOCiuOBvuOBmeOAgg0KDQoN
CkFtYXpvbi5jby5qcA0KDQoNCg0KDQrmnKzjg6Hjg7zjg6vjga/jgIFBbWF6b24uY28uanAg44Gn
44Gu44GU5rOo5paH44Gr44Gk44GE44Gm44CBQW1hem9u44Oe44O844Kx44OD44OI44OX44Os44Kk
44K55Ye65ZOB6ICF44GM44GU5rOo5paH44KS5Y+X6aCY44GX44Gf44GT44Go44KS56K66KqN44GZ
44KL44KC44Gu44Gr44GZ44GO44G+44Gb44KT44CCQW1hem9uLmNvLmpwIOOBjOiyqeWjsuOBmeOC
i+WVhuWTgeOBq+OBpOOBhOOBpuOBr+OAgeWVhuWTgeOBjOeZuumAgeOBleOCjOOBn+OBk+OBqOOC
kuOBiuefpeOCieOBm+OBmeOCi+ODoeODvOODq+OCkuW9k+OCteOCpOODiOOBi+OCieOBiumAgeOC
iuOBl+OBn+aZgueCueOBp+OAgeW9k+ipsuWVhuWTgeOBruOBlOizvOWFpeOBq+OBpOOBhOOBpuOB
ruWlkee0hOOBjOaIkOeri+OBl+OBvuOBmeOAgkFtYXpvbuODnuODvOOCseODg+ODiOODl+ODrOOC
pOOCueWHuuWTgeiAheOBjOWHuuWTgeOBmeOCi+WVhuWTgeOBq+OBpOOBhOOBpuOBr+OAgeWVhuWT
geOBjOeZuumAgeOBleOCjOOBn+OBk+OBqOOCkuOBiuefpeOCieOBm+OBmeOCi+ODoeODvOODq+OC
kuW9k+OCteOCpOODiOOBi+OCieOBiumAgeOCiuOBmeOCi+aZgueCueOBp+OAgeW9k+ipsuWVhuWT
geOBruOBlOizvOWFpeOBq+OBpOOBhOOBpuOBruWlkee0hOOBjOaIkOeri+OBl+OBvuOBmeOAgiDl
nKjluqvnirbms4HjgajjgYrlsYrjgZHkuojlrprml6Xjga/jgIHnorrntITjgZXjgozjgZ/jgoLj
ga7jgafjga/jgYLjgorjgb7jgZvjgpPjgILjgYrlsYrjgZHkuojlrprml6Xjga/jgIHlnKjluqvn
irbms4Hjga7lpInli5XjgarjganjgavjgojjgorlpInmm7TjgZXjgozjgovloLTlkIjjgYzjgYLj
gorjgb7jgZnjgIIg44GT44GuReODoeODvOODq+OCouODieODrOOCueOBr+mFjeS/oeWwgueUqOOB
p+OBmeOAguOBk+OBruODoeODg+OCu+ODvOOCuOOBq+i/lOS/oeOBl+OBquOBhOOCiOOBhuOBiumh
mOOBhOOBhOOBn+OBl+OBvuOBmeOAgiDjg4bjgq3jgrnjg4jlvaLlvI/jgafjga5F44Oh44O844Or
6YWN5L+h44KS44GU5biM5pyb44Gu5aC05ZCI44Gv44CB44GT44Gh44KJ44GL44KJ6Kit5a6a44KS
5aSJ5pu044GX44Gm44GP44Gg44GV44GE44CCIA0KDQoNCg0KIA0KDQoNCg0KDQogCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
