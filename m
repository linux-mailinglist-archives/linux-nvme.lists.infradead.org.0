Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF161FD564
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 21:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Smzg/OF3MtAP8RunNLT81ont5tCoqKlqMQv6Yz0vw+Y=; b=LUx1hlAKjTvUVqhRcngXqTVQU
	08nF+U3U/HsjydcSEU2Jz/nQlsISJUj/jg2DXmfs8RjzKDXpAvW8lDo4Xnb+YLC2/8H2SbT4sYulp
	v5MN9Him/4onCTTV9Ob03UCZtU1wjUm+dq53qYSFPso229UA+XufZP5ott/8I/f75IITy487T2t1l
	Nas7DoKV48bAGC1QsrptU+mWrTBcL68f9PYpi/WDdbUMl2UDcvtV66OmswsmiyeUCA6KbDPwx2s9E
	rm3E3Xd2P745p+ctlO9uZ1pCC1Lpy8jSTFSJ87mzV7gNqIX8ugyOUfaVxz2wkK5AHSJjD7mzjJS4X
	SBlsF1g/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jldeS-0001zt-8J; Wed, 17 Jun 2020 19:23:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jldeO-0001z5-5x
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 19:23:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id f185so3236087wmf.3
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jun 2020 12:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=3dKbPP3eDtyGR49clYMy81qkvxaAQtCk+88ZEFUV1hs=;
 b=NYZlVUwJIE3zS0bX76oEmu4gzb+UcfiZust4L+voBvVC9uC8J6E0mWawlDoRdXivwj
 gsl3p/kOTpw3pI4ywTEVREShX/C4KcRmBIQZzGPwQntTWJOChPNxX3cpOJjHg8eGyD03
 3JYyZKRaXmFKrPLResc9CoCQFqJDmNRdCiKTBUW9SXeJYedVdn7wIekSD6eAk/YSvPud
 TsCJsLrbWClq6h252hqYrQADJZ2/iI3oYtEazEIdphBss3dYXMpB37OBozp+tXrI+WwP
 s1EgYkU+VyhuFxzzHs+yLsVb6KXRyHlYlfYLr9LhRoZ1eoPrqyI/eA8T6korMdmUZKx7
 DyxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=3dKbPP3eDtyGR49clYMy81qkvxaAQtCk+88ZEFUV1hs=;
 b=ts/lLpUMDreqBgo09B+5ipYn8zlrhnURoK8zT+WRwlhnAm5QpoDBcBO431kvKymHrV
 n4V4Q0TohInrr2xOOS1lQgRKnbi+NgYlhYtAeQ1BXAXHM5sNUrBHfEHDP7btwAZmN3Fc
 NQALFhnspevQuVCDaC5L+7cEQtfGm8oZXkJp4p3n+gtiO1qvhniTaB2kxtpw+GRVySpg
 PsHNConn5wjPNczg/tjS/tAPA1zqO4lyoqiQtD1IdibmT6y2TNmDHdcIBV2TtD2jGa7W
 1eVa3r7QZp3W1Sy3fN7JzGDszOQ7LsuHrGPlV4d4Httnb7EqI+OnWzObnXvCo38/JdMB
 GuzA==
X-Gm-Message-State: AOAM532/ikFGogcz5nAcZt08GqprEXg6EBV/XgbPUG/Vor5yb51JYMow
 AOmP9xJNkspWE6S1DTVBNPv0QA==
X-Google-Smtp-Source: ABdhPJwqKrw0uuSaRBa9T5zFW+UI6fKVOsbiCtXpEWjfsmyzGw9wYC8zTs+7hZqZObf/sL2pcMK8bw==
X-Received: by 2002:a1c:1f85:: with SMTP id f127mr216651wmf.163.1592421786521; 
 Wed, 17 Jun 2020 12:23:06 -0700 (PDT)
Received: from [10.0.0.6] (xb932c246.cust.hiper.dk. [185.50.194.70])
 by smtp.gmail.com with ESMTPSA id n23sm751601wmc.21.2020.06.17.12.23.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 12:23:05 -0700 (PDT)
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
To: =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Matias Bjorling <Matias.Bjorling@wdc.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <20200617074328.GA13474@lst.de>
 <20200617144230.ojzk4f5gcwqonzrf@mpHalley.localdomain>
 <f1bc34e0-c059-6127-d69f-e31c91ce6a9f@lightnvm.io>
 <20200617182841.jnbxgshi7bawfzls@mpHalley.localdomain>
 <MN2PR04MB62236DC26A04A65A242A80D2F19A0@MN2PR04MB6223.namprd04.prod.outlook.com>
 <20200617190901.zpss2lsh6qsu5zuf@mpHalley.local>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <1ab101ef-7b74-060f-c2bc-d4c36dec91f0@lightnvm.io>
Date: Wed, 17 Jun 2020 21:23:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200617190901.zpss2lsh6qsu5zuf@mpHalley.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_122308_277031_948D218D 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <Niklas.Cassel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Ajay Joshi <Ajay.Joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <Keith.Busch@wdc.com>,
 Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Judy Brock <judy.brock@samsung.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTcvMDYvMjAyMCAyMS4wOSwgSmF2aWVyIEdvbnrDoWxleiB3cm90ZToKPiBPbiAxNy4wNi4y
MDIwIDE4OjU1LCBNYXRpYXMgQmpvcmxpbmcgd3JvdGU6Cj4+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQo+Pj4gRnJvbTogSmF2aWVyIEdvbnrDoWxleiA8amF2aWVyQGphdmlnb24uY29tPgo+
Pj4gU2VudDogV2VkbmVzZGF5LCAxNyBKdW5lIDIwMjAgMjAuMjkKPj4+IFRvOiBNYXRpYXMgQmrD
uHJsaW5nIDxtYkBsaWdodG52bS5pbz4KPj4+IENjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxz
dC5kZT47IEtlaXRoIEJ1c2NoIDxLZWl0aC5CdXNjaEB3ZGMuY29tPjsKPj4+IGxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgtYmxvY2tAdmdlci5rZXJuZWwub3JnOyBEYW1pZW4g
Cj4+PiBMZSBNb2FsCj4+PiA8RGFtaWVuLkxlTW9hbEB3ZGMuY29tPjsgTWF0aWFzIEJqb3JsaW5n
IDxNYXRpYXMuQmpvcmxpbmdAd2RjLmNvbT47Cj4+PiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1i
ZXJnLm1lPjsgSmVucyBBeGJvZSA8YXhib2VAa2VybmVsLmRrPjsgSGFucwo+Pj4gSG9sbWJlcmcg
PEhhbnMuSG9sbWJlcmdAd2RjLmNvbT47IERtaXRyeSBGb21pY2hldgo+Pj4gPERtaXRyeS5Gb21p
Y2hldkB3ZGMuY29tPjsgQWpheSBKb3NoaSA8QWpheS5Kb3NoaUB3ZGMuY29tPjsgQXJhdmluZAo+
Pj4gUmFtZXNoIDxBcmF2aW5kLlJhbWVzaEB3ZGMuY29tPjsgTmlrbGFzIENhc3NlbAo+Pj4gPE5p
a2xhcy5DYXNzZWxAd2RjLmNvbT47IEp1ZHkgQnJvY2sgPGp1ZHkuYnJvY2tAc2Ftc3VuZy5jb20+
Cj4+PiBTdWJqZWN0OiBSZTogW1BBVENIIDUvNV0gbnZtZTogc3VwcG9ydCBmb3Igem9uZWQgbmFt
ZXNwYWNlcwo+Pj4KPj4+IE9uIDE3LjA2LjIwMjAgMTk6NTcsIE1hdGlhcyBCasO4cmxpbmcgd3Jv
dGU6Cj4+PiA+T24gMTcvMDYvMjAyMCAxNi40MiwgSmF2aWVyIEdvbnrDoWxleiB3cm90ZToKPj4+
ID4+T24gMTcuMDYuMjAyMCAwOTo0MywgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4+PiA+Pj5P
biBUdWUsIEp1biAxNiwgMjAyMCBhdCAxMjo0MTo0MlBNICswMjAwLCBKYXZpZXIgR29uesOhbGV6
IHdyb3RlOgo+Pj4gPj4+Pk9uIDE2LjA2LjIwMjAgMDg6MzQsIEtlaXRoIEJ1c2NoIHdyb3RlOgo+
Pj4gPj4+Pj5BZGQgc3VwcG9ydCBmb3IgTlZNIEV4cHJlc3MgWm9uZWQgTmFtZXNwYWNlcyAoWk5T
KSBDb21tYW5kIFNldAo+Pj4gPj4+Pj5kZWZpbmVkIGluIE5WTSBFeHByZXNzIFRQNDA1My4gWm9u
ZWQgbmFtZXNwYWNlcyBhcmUgZGlzY292ZXJlZAo+Pj4gPj4+Pj5iYXNlZCBvbiB0aGVpciBDb21t
YW5kIFNldCBJZGVudGlmaWVyIHJlcG9ydGVkIGluIHRoZSBuYW1lc3BhY2VzCj4+PiA+Pj4+Pk5h
bWVzcGFjZSBJZGVudGlmaWNhdGlvbiBEZXNjcmlwdG9yIGxpc3QuIEEgc3VjY2Vzc2Z1bGx5IAo+
Pj4gZGlzY292ZXJlZAo+Pj4gPj4+Pj5ab25lZCBOYW1lc3BhY2Ugd2lsbCBiZSByZWdpc3RlcmVk
IHdpdGggdGhlIGJsb2NrIGxheWVyIGFzIGEgaG9zdAo+Pj4gPj4+Pj5tYW5hZ2VkIHpvbmVkIGJs
b2NrIGRldmljZSB3aXRoIFpvbmUgQXBwZW5kIGNvbW1hbmQgc3VwcG9ydC4gQQo+Pj4gPj4+Pj5u
YW1lc3BhY2UgdGhhdCBkb2VzIG5vdCBzdXBwb3J0IGFwcGVuZCBpcyBub3Qgc3VwcG9ydGVkIGJ5
IHRoZSAKPj4+IGRyaXZlci4KPj4+ID4+Pj4KPj4+ID4+Pj5XaHkgYXJlIHdlIGVuZm9yY2luZyB0
aGUgYXBwZW5kIGNvbW1hbmQ/IEFwcGVuZCBpcyBvcHRpb25hbCBvbiB0aGUKPj4+ID4+Pj5jdXJy
ZW50IFpOUyBzcGVjaWZpY2F0aW9uLCBzbyB3ZSBzaG91bGQgbm90IG1ha2UgdGhpcyBtYW5kYXRv
cnkgaW4KPj4+ID4+Pj50aGUgaW1wbGVtZW50YXRpb24uIFNlZSBzcGVjaWZpY3MgYmVsb3cuCj4+
PiA+Pj4KPj4+ID4+PkJlY2F1c2UgQXBwZW5kIGlzIHRoZSB3YXkgdG8gZ28gYW5kIHdlJ3ZlIG1v
dmVkIHRoZSBMaW51eCB6b25lZCAKPj4+IGJsb2NrCj4+PiA+Pj5JL08gc3RhY2sgdG8gcmVxdWly
ZWQgaXQsIGFzIHNob3VsZCBoYXZlIGJlZW4gb2J2aW91cyB0byBhbnlvbmUKPj4+ID4+PmZvbGxv
d2luZyBsaW51eC1ibG9jayBpbiB0aGUgbGFzdCBmZXcgbW9udGhzLsKgIEkgYWxzbyBoYXZlIHRv
IHNheSAKPj4+IEknbQo+Pj4gPj4+cmVhbGx5IHRpcmVkIG9mIHRoZSBzdHVwaWQgcG9saXRpY3Mg
dGhhIHlvdXIgY29tcGFueSBzdGFydGVkIGluIHRoZQo+Pj4gPj4+TlZNZSB3b3JraW5nIGdyb3Vw
LCBhbmQgd2lsbCBzYXkgdGhhdCB0aGVzZSBkbyBub3QgbWF0dGVyIGZvciBMaW51eAo+Pj4gPj4+
ZGV2ZWxvcG1lbnQgYXQgYWxsLsKgIElmIHlvdSB0aGluayBpdCBpcyB3b3J0aHdoaWxlIHRvIHN1
cHBvcnQgCj4+PiBkZXZpY2VzCj4+PiA+Pj53aXRob3V0IFpvbmUgQXBwZW5kIHlvdSBjYW4gY29u
dHJpYnV0ZSBzdXBwb3J0IGZvciB0aGVtIG9uIHRvcCBvZgo+Pj4gPj4+dGhpcyBzZXJpZXMgYnkg
cG9ydGluZyB0aGUgU0NTSSBab25lIEFwcGVuZCBFbXVsYXRpb24gY29kZSB0byBOVk1lLgo+Pj4g
Pj4+Cj4+PiA+Pj5BbmQgSSdtIG5vdCBldmVuIGdvaW5nIHRvIHJlYWQgdGhlIHJlc3Qgb2YgdGhp
cyB0aHJlYWQgYXMgSSdtIG9uIGEKPj4+ID4+PnZhY2F0aW9uIHRoYXQgSSBiYWRseSBuZWVkZWQg
YmVjYXVzZSBvZiB0aGUgU2Ftc3VuZyBUV0cgYnVsbHNoaXQuCj4+PiA+Pgo+Pj4gPj5NeSBpbnRl
bnRpb24gaXMgdG8gc3VwcG9ydCBzb21lIFNhbXN1bmcgWk5TIGRldmljZXMgdGhhdCB3aWxsIG5v
dAo+Pj4gPj5lbmFibGUgYXBwZW5kLiBJIGRvIG5vdCB0aGluayB0aGlzIGlzIGFuIHVucmVhc29u
YWJsZSB0aGluZyB0byBkby4gCj4+PiBIb3cKPj4+ID4+LyB3aHkgYXBwZW5kIGVuZGVkIHVwIGJl
aW5nIGFuIG9wdGlvbmFsIGZlYXR1cmUgaW4gdGhlIFpOUyBUUCBpcwo+Pj4gPj5vcnRob2dvbmFs
IHRvIHRoaXMgY29udmVyc2F0aW9uLiBCdWxsc2hpdCBvciBub3QsIGl0IGVuZHMgdXAgb24KPj4+
ID4+ZGV2aWNlcyB0aGF0IHdlIHdvdWxkIGxpa2UgdG8gc3VwcG9ydCBvbmUgd2F5IG9yIGFub3Ro
ZXIuCj4+PiA+Cj4+PiA+SSBkbyBub3QgYmVsaWV2ZSBhbnkgb2YgdXMgaGF2ZSBzYWlkIHRoYXQg
aXQgaXMgdW5yZWFzb25hYmxlIHRvCj4+PiA+c3VwcG9ydC4gV2UndmUgb25seSBhc2tlZCB0aGF0
IHlvdSBtYWtlIHRoZSBwYXRjaGVzIGZvciBpdC4KPj4+ID4KPj4+ID5BbGwgb2YgdXMgaGF2ZSBj
b21tdW5pY2F0ZWQgd2h5IFpvbmUgQXBwZW5kIGlzIGEgZ3JlYXQgYWRkaXRpb24gdG8gdGhlCj4+
PiA+TGludXgga2VybmVsLiBBbHNvLCBhcyBDaHJpc3RvcGggcG9pbnRzIG91dCwgdGhpcyBoYXMg
bm90IGJlZW4gYSAKPj4+IHNlY3JldAo+Pj4gPmZvciB0aGUgcGFzdCBjb3VwbGUgb2YgbW9udGhz
LCBhbmQgYXMgTWFydGluIHBvaW50ZWQgb3V0LCBoYXZlIGJlZW4gYQo+Pj4gPndhbnRlZCBmZWF0
dXJlIGZvciB0aGUgcGFzdCBkZWNhZGUgaW4gdGhlIExpbnV4IGNvbW11bml0eS4KPj4+Cj4+PiA+
Cj4+PiA+SSBkbyB3YW50IHRvIHBvbGl0ZWx5IHBvaW50IG91dCwgdGhhdCB5b3UndmUgZ290IGEg
dmVyeSBjbGVhciBzaWduYWwKPj4+ID5mcm9tIHRoZSBrZXkgc3RvcmFnZSBtYWludGFpbmVycy4g
RWFjaCBvZiB0aGVtIGlzIHBhcnQgb2YgdGhlIHBsYW5ldCdzCj4+PiA+YmVzdCBvZiB0aGUgYmVz
dCBhbmQgbW9zdCB3ZWxsLXJlc3BlY3RlZCBzb2Z0d2FyZSBkZXZlbG9wZXJzLCB0aGF0Cj4+PiA+
bGl0ZXJhbGx5IGhhdmUgYnVpbHQgdGhlIHN0b3JhZ2Ugc3RhY2sgdGhhdCBtb3N0IG9mIHRoZSB3
b3JsZCBkZXBlbmRzCj4+PiA+b24uIFRoZSBzdG9yYWdlIHN0YWNrIHRoYXQgcmVjZW50bHkgc2Vu
dCBtYW5uZWQgcm9ja2V0cyBpbnRvIHNwYWNlLgo+Pj4gPlRoZXkgZWFjaCB1bmFuaW1vdXNseSBz
YWlkIHRoYXQgdGhlIFpvbmUgQXBwZW5kIGNvbW1hbmQgaXMgdGhlIHJpZ2h0Cj4+PiA+YXBwcm9h
Y2ggZm9yIHRoZSBMaW51eCBrZXJuZWwgdG8gcmVkdWNlIHRoZSBvdmVyaGVhZCBvZiBJL08gdHJh
Y2tpbmcKPj4+ID5mb3Igem9uZWQgYmxvY2sgZGV2aWNlcy4gSXQgbWF5IGJlIHdvcnRoIGJyaW5n
aW5nIHRoaXMgaW5mb3JtYXRpb24gdG8KPj4+ID55b3VyIGVuZ2luZWVyaW5nIG9yZ2FuaXphdGlv
biwgYW5kIGFsc28gcG90ZW50aWFsbHkgY29uc2lkZXIgWm9uZQo+Pj4gPkFwcGVuZCBzdXBwb3J0
IGZvciBkZXZpY2VzIHRoYXQgeW91IGludGVuZCB0byB1c2VkIHdpdGggdGhlIExpbnV4Cj4+PiA+
a2VybmVsIHN0b3JhZ2Ugc3RhY2suCj4+Pgo+Pj4gSSB1bmRlcnN0YW5kIGFuZCBJIGhhdmUgbmV2
ZXIgc2FpZCB0aGUgb3Bwb3NpdGUuCj4+Pgo+Pj4gQXBwZW5kIGlzIGEgZ3JlYXQgYWRkaXRpb24g
dGhhdAo+Pgo+PiBPbmUgbWF5IGhhdmUgaW50ZXJwcmV0ZWQgeW91ciBTREMgRU1FQSB0YWxrIHRo
ZSBvcHBvc2l0ZS4gSXQgd2FzIG5vdAo+PiB2ZXJ5IG5ldXRyYWwgdG93YXJkcyBab25lIEFwcGVu
ZCwgYnV0IHRoYXQgaXMgb2YgY2F1c2Ugb25lIG9mIGl0cyBsZWFzdAo+PiBwcm9ibGVtcy4gQnV0
IEkgYW0gaGFwcHkgdG8gaGVhciB0aGF0IHlvdSd2ZSBjaGFuZ2VkIHlvdXIgb3Bpbmlvbi4KPgo+
IEFzIHlvdSBhcmUgd2VsbCBhd2FyZSwgdGhlcmUgYXJlIHNvbWUgY2FzZXMgd2hlcmUgYXBwZW5k
IGludHJvZHVjZXMKPiBjaGFsbGVuZ2VzLiBUaGlzIGlzIHdlbGwtZG9jdW1lbnRlZCBvbiB0aGUg
YmlibGlvZ3JhcGh5IGFyb3VuZCBuYW1lbGVzcwo+IHdyaXRlcy4gCgpUaGUgbmFtZWxlc3Mgd3Jp
dGVzIGlkZWEgaXMgdmFzdGx5IGRpZmZlcmVudCBmcm9tIFpvbmUgYXBwZW5kLCBhbmQgaGF2ZSAK
bGl0dGxlIG9mIHRoZSBkcmF3YmFja3Mgb2YgbmFtZWxlc3Mgd3JpdGVzLCB3aGljaCBtYWtlcyB0
aGUgCndlbGwtZG9jdW1lbnRlZCBsaXRlcmF0dXJlIG5vdCBhcHBseS4KCj4gUGFydCBvZiB0aGUg
dGFsayB3YXMgb24gcHJlc2VudGluZyBhbiBhbHRlcm5hdGl2ZSBmb3IgdGhlc2UKPiBwYXJ0aWN1
bGFyIHVzZSBjYXNlcy4KPgo+IFRoaXMgc2FpZCwgSSBhbSBub3QgYWZyYWlkIG9mIGNoYW5naW5n
IG15IHBvaW50IG9mIHZpZXcgd2hlbiBJIGFtIHByb3Zlbgo+IHdyb25nLgo+Cj4+Cj4+PiB3ZSBh
bHNvIGhhdmUgYmVlbiB3b3JraW5nIG9uIGZvciBzZXZlcmFsIG1vbnRocyAoc2VlIHBhdGNoZXMg
Cj4+PiBhZGRpdGlvbnMgZnJvbQo+Pj4gdG9kYXkpLiBXZSBqdXN0IGhhdmUgYSBjb3VwbGUgb2Yg
dXNlIGNhc2VzIHdoZXJlIGFwcGVuZCBpcyBub3QgCj4+PiByZXF1aXJlZCBhbmQgSQo+Pj4gd291
bGQgbGlrZSB0byBtYWtlIHN1cmUgdGhhdCB0aGV5IGFyZSBzdXBwb3J0ZWQuCj4+Pgo+Pj4gQXQg
dGhlIGVuZCBvZiB0aGUgZGF5LCB0aGUgb25seSB0aGluZyBJIGhhdmUgZGlzYWdyZWVkIG9uIGlz
IHRoYXQgCj4+PiB0aGUgTlZNZQo+Pj4gZHJpdmVyIHJlamVjdHMgWk5TIFNTRHMgdGhhdCBkbyBu
b3Qgc3VwcG9ydCBhcHBlbmQsIGFzIG9wcG9zZWQgdG8gCj4+PiBkb2luZyB0aGlzCj4+PiBpbnN0
ZWFkIHdoZW4gYW4gaW4ta2VybmVsIHVzZXIgd2FudHMgdG8gdXRpbGl6ZSB0aGUgZHJpdmUgKGUu
Zy4sIAo+Pj4gZm9ybWF0dGluZyBhIEZTCj4+PiB3aXRoIHpvbmVkIHN1cHBvcnQpIFRoaXMgd291
bGQgYWxsb3cgX3RvZGF5Xwo+Pj4gaW9jdGwoKSBwYXNzdGhydSB0byB3b3JrIGZvciBub3JtYWwg
d3JpdGVzLgo+Pj4KPj4+IEkgc3RpbGwgYmVsaWV2ZSB0aGUgYWJvdmUgd291bGQgYmUgYSBtb3Jl
IGluY2x1c2l2ZSBzb2x1dGlvbiB3aXRoIAo+Pj4gdGhlIGN1cnJlbnQgWk5TCj4+PiBzcGVjaWZp
Y2F0aW9uLCBidXQgSSBjYW4gc2VlIHRoYXQgdGhlIGdlbmVyYWwgY29uc2Vuc3VzIGlzIGRpZmZl
cmVudC4KPj4KPj4gVGhlIGNvbW1lbnQgZnJvbSB0aGUgY29tbXVuaXR5LCBpbmNsdWRpbmcgbWUs
IGlzIHRoYXQgdGhlcmUgaXMgYQo+PiBnZW5lcmFsIHJlcXVpcmVtZW50IGZvciBab25lIEFwcGVu
ZCBjb21tYW5kIHdoZW4gdXRpbGl6aW5nIFpvbmVkCj4+IHN0b3JhZ2UgZGV2aWNlcy4gVGhpcyBp
cyBzaW1pbGFyIHRvIGltcGxlbWVudCBhbiBBUEkgdGhhdCBvbmUgd2FudHMgdG8KPj4gc3VwcG9y
dC4gSXQgaXMgbm90IGEgZ2VuZXJhbCBjb25zZW5zdXMgb3Igb3Bpbmlvbi4gSXQgaXMgaGFyZCBm
YWN0cyBhbmQKPj4gaG93IHRoZSBMaW51eCBrZXJuZWwgc291cmNlIGNvZGUgaXMgaW1wbGVtZW50
ZWQgYXQgdGhpcyBwb2ludC4gT25lIG11c3QKPj4gaW1wbGVtZW50IHN1cHBvcnQgZm9yIFpOUyBT
U0RzIHRoYXQgZG8gbm90IGV4cG9zZSB0aGUgWm9uZSBBcHBlbmQKPj4gY29tbWFuZCBuYXRpdmVs
eS4gUGVyaW9kLgo+Cj4gQWdhaW4sIEkgYW0gbm90IHNheWluZyB0aGUgb3Bwb3NpdGUuIFJlYWQg
dGhlIDIgbGluZXMgYmVsb3cuLi4KCk15IHBvaW50IHdpdGggdGhlIGFib3ZlIHBhcmFncmFwaCB3
YXMgdG8gY2xhcmlmeSB0aGF0IHdlIGFyZSBub3QgdHJ5aW5nIAp0byBiZSBkaWZmaWN1bHQgb3Ig
b3BpbmlvbmF0ZWQsIGJ1dCBwb2ludCBvdXQgdGhhdCB0aGUgcmVhc29uIHdlIGdpdmUgCnlvdSB0
aGUgc3BlY2lmaWMgZmVlZGJhY2ssIGlzIHRoYXQgaXQgaXMgdGhlIHdheSBpdCBpcyBpbiB0aGUg
a2VybmVsIGFzIAp0b2RheS4KCj4KPj4+Cj4+PiBTbyB3ZSB3aWxsIGdvIGJhY2ssIGFwcGx5IHRo
ZSBmZWVkYmFjayB0aGF0IHdlIGdvdCBhbmQgcmV0dXJuIHdpdGggYW4KPj4+IGFwcHJvYWNoIHRo
YXQgYmV0dGVyIGZpdHMgdGhlIGVjb3N5c3RlbS4KPj4+Cj4+PiA+Cj4+PiA+QW5vdGhlciBhcHBy
b2FjaCwgaXMgdG8gdXNlIFNQREssIGFuZCBieXBhc3MgdGhlIExpbnV4IGtlcm5lbC4gVGhpcwo+
Pj4gPm1pZ2h0IGV2ZW4gYmUgYW4gYWR2YW50YWdlLCB5b3VyIGN1c3RvbWVycyBkb2VzIG5vdCBo
YXZlIHRvIHdhaXQgb24gCj4+PiB0aGUKPj4+ID5MaW51eCBkaXN0cmlidXRpb24gYmVpbmcgcmVs
ZWFzZWQgd2l0aCBhIGxvbmcgdGVybSByZWxlYXNlLCBiZWZvcmUgCj4+PiB0aGV5Cj4+PiA+Y2Fu
IGV2ZW4gZ2V0IHN0YXJ0ZWQgYW5kIGRlcGxveSBpbiB2b2x1bWUuIEkuZS4sIHRoZXkgd2lsbCBh
Y3R1YWxseSAKPj4+IGdldAo+Pj4gPmZhc3RlciB0byBtYXJrZXQsIGFuZCB5b3VyIGNvbXBhbnkg
d2lsbCBiZSBhYmxlIHRvIHNlbGwgbW9yZSBkcml2ZXMuCj4+Pgo+Pj4gSSB0aGluayBJIHdpbGwg
cmVmcmFpbiBmcm9tIGRpc2N1c3Npbmcgb3VyIGJ1c2luZXNzIHN0cmF0ZWd5IG9uIGFuIAo+Pj4g
b3BlbiBtYWlsaW5nCj4+PiBsaXN0LiBBcHByZWNpYXRlIHRoZSBmZWVkYmFjayB0aG91Z2guIFZl
cnkgaW5zaWdodGZ1bC4KPj4KPj4gSSBhbSBub3QgYXNraW5nIGZvciB5b3UgdG8gZGlzY3VzcyB5
b3VyIGJ1c2luZXNzIHN0cmF0ZWd5IG9uIHRoZSAKPj4gbWFpbGluZyBsaXN0LiBNeSBjb21tZW50
IHdhcyB0byBnaXZlIHlvdSBnZW51aW5lbHkgYWR2aXNlIHRoYXQgbWF5IAo+PiBzYXZlIGEgbG90
IG9mIHdvcmssIGFuZCBtaWdodCBldmVuIGdldCBiZXR0ZXIgcmVzdWx0cy4KPj4KPj4+Cj4+PiBU
aGFua3MsCj4+PiBKYXZpZXIKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW52bWUK
