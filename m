Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6DB1FD52F
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 21:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xAE5wkDdqgEfmTAesdlpcrxXTSiELUBnkZd4yye7hno=; b=bY8/3k8DgVk+zy/PhYZYhqb7R
	a7l0q6vlbsCiY3rrWxX8yuwlwCQVR75+QHlnNyBxQp6JMapAMnpMGMQt/znSsDBZADjfHkjCHTXmY
	bCJaNETjy1pxcMTqPa8vdqStJge7GGVvIqAkDl2xEdJMMaOwzc8X03GmwkEsS2V6QIss6V7hFPrxF
	VPBzHRGu+1rS9A1mi8L9WCD9yuEwyQcuqVBH3q/6EBp1UMopHC8HxQcxJh5Xw3Lw15n5JMlSBwpT2
	bgCxVdG1dY9CAJomvYOX6fTJ4JyIi5feSJyoH9YtkYb46UG0gpWZBZX2xrc/sHPMjv8Gl0ckYCtdM
	rB6URxD/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jldQs-0000l7-C8; Wed, 17 Jun 2020 19:09:10 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jldQm-0000kQ-M6
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 19:09:06 +0000
Received: by mail-ej1-x643.google.com with SMTP id p20so3668064ejd.13
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jun 2020 12:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=FFx/vI6yWI+LuFRqxqYPZp/PkhUJ0eHXNVCiah0a8uw=;
 b=aHHnWaHXIPi+Us8oBr2ZdPnwnmV3zIl92JjoxwvN2RoouHYj2/gONuuZxOk/3j6g6R
 t+N3raQ2CfbHuCzOejQTipcOdtaELkvhfq/No7vaHsyKaseYVZA1wkl1T/oac1FMfQYs
 3dR1dwFTt1+D3nKa2E/dD4EiRTlUYUkvylmAI/Elm8wgdqb04w5Bst/45+0CoRoeeLBu
 AD8pW9N1Doa4PUYoB6E6lrTKxwzidDZSijQa5Fp+i0CjdrhynnEMcUDrC+VZjb7J+dMz
 rAPGopDzg6kb04GhAMsG0+wFsQVefArQXUV4uaRne9eHL8ZW2g6PV8jr8zxT9ec+bRYA
 dukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=FFx/vI6yWI+LuFRqxqYPZp/PkhUJ0eHXNVCiah0a8uw=;
 b=c5c4U3D11XU8350kjaQqGAxOTIO28HsjAI7jGjGU/pRxu9RSsdJ+4xW8XCaRW1uWTa
 mtjASIEm1ogXrZEtyytdYiF+wjj3H7JglAI8Li+s3TeOdfgdlyWw/6yfgWKwGiFgkXjM
 oxRd2pe8Ywkl46Ih12PMDG5L+eb3jEnlMOdjjqiL3p9gBjeOpiWLDJKlm7qI/u959mNz
 oiO7E031opxhGfG8cATEgtRuaxb1fi9HHiexRb4agUNGr5IRGeX858lXEOrrBZOOJQ55
 ++qYLNu3ofQod6O7L9QxFEsgL2fv+bxOrqzJ/xwaOamtSyd0/PDuo87X4ayTzOVnblip
 EoZg==
X-Gm-Message-State: AOAM531F69+YcDY/WkHFmw8AC0Le6DrhGdI1bWXBuR1nD5wNO/ZLWvZY
 qjRMSAEp+dwIkQZAqII3ODQurQ==
X-Google-Smtp-Source: ABdhPJyVGcrXkG9XtRoXVdKirgsUu/18NGTD37yaPYl5eTwg+LbCZyjnvsemDrsu0Kztv3kquQMyNg==
X-Received: by 2002:a17:906:8684:: with SMTP id
 g4mr540800ejx.431.1592420943252; 
 Wed, 17 Jun 2020 12:09:03 -0700 (PDT)
Received: from localhost (ip-5-186-127-235.cgn.fibianet.dk. [5.186.127.235])
 by smtp.gmail.com with ESMTPSA id y12sm556555ejp.39.2020.06.17.12.09.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 12:09:02 -0700 (PDT)
Date: Wed, 17 Jun 2020 21:09:01 +0200
From: Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
To: Matias Bjorling <Matias.Bjorling@wdc.com>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200617190901.zpss2lsh6qsu5zuf@mpHalley.local>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <20200617074328.GA13474@lst.de>
 <20200617144230.ojzk4f5gcwqonzrf@mpHalley.localdomain>
 <f1bc34e0-c059-6127-d69f-e31c91ce6a9f@lightnvm.io>
 <20200617182841.jnbxgshi7bawfzls@mpHalley.localdomain>
 <MN2PR04MB62236DC26A04A65A242A80D2F19A0@MN2PR04MB6223.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR04MB62236DC26A04A65A242A80D2F19A0@MN2PR04MB6223.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_120904_728156_598DABD9 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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
 Hans Holmberg <Hans.Holmberg@wdc.com>,
 Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTcuMDYuMjAyMCAxODo1NSwgTWF0aWFzIEJqb3JsaW5nIHdyb3RlOgo+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBKYXZpZXIgR29uesOhbGV6IDxqYXZpZXJAamF2aWdv
bi5jb20+Cj4+IFNlbnQ6IFdlZG5lc2RheSwgMTcgSnVuZSAyMDIwIDIwLjI5Cj4+IFRvOiBNYXRp
YXMgQmrDuHJsaW5nIDxtYkBsaWdodG52bS5pbz4KPj4gQ2M6IENocmlzdG9waCBIZWxsd2lnIDxo
Y2hAbHN0LmRlPjsgS2VpdGggQnVzY2ggPEtlaXRoLkJ1c2NoQHdkYy5jb20+Owo+PiBsaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWJsb2NrQHZnZXIua2VybmVsLm9yZzsgRGFt
aWVuIExlIE1vYWwKPj4gPERhbWllbi5MZU1vYWxAd2RjLmNvbT47IE1hdGlhcyBCam9ybGluZyA8
TWF0aWFzLkJqb3JsaW5nQHdkYy5jb20+Owo+PiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJn
Lm1lPjsgSmVucyBBeGJvZSA8YXhib2VAa2VybmVsLmRrPjsgSGFucwo+PiBIb2xtYmVyZyA8SGFu
cy5Ib2xtYmVyZ0B3ZGMuY29tPjsgRG1pdHJ5IEZvbWljaGV2Cj4+IDxEbWl0cnkuRm9taWNoZXZA
d2RjLmNvbT47IEFqYXkgSm9zaGkgPEFqYXkuSm9zaGlAd2RjLmNvbT47IEFyYXZpbmQKPj4gUmFt
ZXNoIDxBcmF2aW5kLlJhbWVzaEB3ZGMuY29tPjsgTmlrbGFzIENhc3NlbAo+PiA8TmlrbGFzLkNh
c3NlbEB3ZGMuY29tPjsgSnVkeSBCcm9jayA8anVkeS5icm9ja0BzYW1zdW5nLmNvbT4KPj4gU3Vi
amVjdDogUmU6IFtQQVRDSCA1LzVdIG52bWU6IHN1cHBvcnQgZm9yIHpvbmVkIG5hbWVzcGFjZXMK
Pj4KPj4gT24gMTcuMDYuMjAyMCAxOTo1NywgTWF0aWFzIEJqw7hybGluZyB3cm90ZToKPj4gPk9u
IDE3LzA2LzIwMjAgMTYuNDIsIEphdmllciBHb256w6FsZXogd3JvdGU6Cj4+ID4+T24gMTcuMDYu
MjAyMCAwOTo0MywgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4+ID4+Pk9uIFR1ZSwgSnVuIDE2
LCAyMDIwIGF0IDEyOjQxOjQyUE0gKzAyMDAsIEphdmllciBHb256w6FsZXogd3JvdGU6Cj4+ID4+
Pj5PbiAxNi4wNi4yMDIwIDA4OjM0LCBLZWl0aCBCdXNjaCB3cm90ZToKPj4gPj4+Pj5BZGQgc3Vw
cG9ydCBmb3IgTlZNIEV4cHJlc3MgWm9uZWQgTmFtZXNwYWNlcyAoWk5TKSBDb21tYW5kIFNldAo+
PiA+Pj4+PmRlZmluZWQgaW4gTlZNIEV4cHJlc3MgVFA0MDUzLiBab25lZCBuYW1lc3BhY2VzIGFy
ZSBkaXNjb3ZlcmVkCj4+ID4+Pj4+YmFzZWQgb24gdGhlaXIgQ29tbWFuZCBTZXQgSWRlbnRpZmll
ciByZXBvcnRlZCBpbiB0aGUgbmFtZXNwYWNlcwo+PiA+Pj4+Pk5hbWVzcGFjZSBJZGVudGlmaWNh
dGlvbiBEZXNjcmlwdG9yIGxpc3QuIEEgc3VjY2Vzc2Z1bGx5IGRpc2NvdmVyZWQKPj4gPj4+Pj5a
b25lZCBOYW1lc3BhY2Ugd2lsbCBiZSByZWdpc3RlcmVkIHdpdGggdGhlIGJsb2NrIGxheWVyIGFz
IGEgaG9zdAo+PiA+Pj4+Pm1hbmFnZWQgem9uZWQgYmxvY2sgZGV2aWNlIHdpdGggWm9uZSBBcHBl
bmQgY29tbWFuZCBzdXBwb3J0LiBBCj4+ID4+Pj4+bmFtZXNwYWNlIHRoYXQgZG9lcyBub3Qgc3Vw
cG9ydCBhcHBlbmQgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUgZHJpdmVyLgo+PiA+Pj4+Cj4+ID4+
Pj5XaHkgYXJlIHdlIGVuZm9yY2luZyB0aGUgYXBwZW5kIGNvbW1hbmQ/IEFwcGVuZCBpcyBvcHRp
b25hbCBvbiB0aGUKPj4gPj4+PmN1cnJlbnQgWk5TIHNwZWNpZmljYXRpb24sIHNvIHdlIHNob3Vs
ZCBub3QgbWFrZSB0aGlzIG1hbmRhdG9yeSBpbgo+PiA+Pj4+dGhlIGltcGxlbWVudGF0aW9uLiBT
ZWUgc3BlY2lmaWNzIGJlbG93Lgo+PiA+Pj4KPj4gPj4+QmVjYXVzZSBBcHBlbmQgaXMgdGhlIHdh
eSB0byBnbyBhbmQgd2UndmUgbW92ZWQgdGhlIExpbnV4IHpvbmVkIGJsb2NrCj4+ID4+PkkvTyBz
dGFjayB0byByZXF1aXJlZCBpdCwgYXMgc2hvdWxkIGhhdmUgYmVlbiBvYnZpb3VzIHRvIGFueW9u
ZQo+PiA+Pj5mb2xsb3dpbmcgbGludXgtYmxvY2sgaW4gdGhlIGxhc3QgZmV3IG1vbnRocy7CoCBJ
IGFsc28gaGF2ZSB0byBzYXkgSSdtCj4+ID4+PnJlYWxseSB0aXJlZCBvZiB0aGUgc3R1cGlkIHBv
bGl0aWNzIHRoYSB5b3VyIGNvbXBhbnkgc3RhcnRlZCBpbiB0aGUKPj4gPj4+TlZNZSB3b3JraW5n
IGdyb3VwLCBhbmQgd2lsbCBzYXkgdGhhdCB0aGVzZSBkbyBub3QgbWF0dGVyIGZvciBMaW51eAo+
PiA+Pj5kZXZlbG9wbWVudCBhdCBhbGwuwqAgSWYgeW91IHRoaW5rIGl0IGlzIHdvcnRod2hpbGUg
dG8gc3VwcG9ydCBkZXZpY2VzCj4+ID4+PndpdGhvdXQgWm9uZSBBcHBlbmQgeW91IGNhbiBjb250
cmlidXRlIHN1cHBvcnQgZm9yIHRoZW0gb24gdG9wIG9mCj4+ID4+PnRoaXMgc2VyaWVzIGJ5IHBv
cnRpbmcgdGhlIFNDU0kgWm9uZSBBcHBlbmQgRW11bGF0aW9uIGNvZGUgdG8gTlZNZS4KPj4gPj4+
Cj4+ID4+PkFuZCBJJ20gbm90IGV2ZW4gZ29pbmcgdG8gcmVhZCB0aGUgcmVzdCBvZiB0aGlzIHRo
cmVhZCBhcyBJJ20gb24gYQo+PiA+Pj52YWNhdGlvbiB0aGF0IEkgYmFkbHkgbmVlZGVkIGJlY2F1
c2Ugb2YgdGhlIFNhbXN1bmcgVFdHIGJ1bGxzaGl0Lgo+PiA+Pgo+PiA+Pk15IGludGVudGlvbiBp
cyB0byBzdXBwb3J0IHNvbWUgU2Ftc3VuZyBaTlMgZGV2aWNlcyB0aGF0IHdpbGwgbm90Cj4+ID4+
ZW5hYmxlIGFwcGVuZC4gSSBkbyBub3QgdGhpbmsgdGhpcyBpcyBhbiB1bnJlYXNvbmFibGUgdGhp
bmcgdG8gZG8uIEhvdwo+PiA+Pi8gd2h5IGFwcGVuZCBlbmRlZCB1cCBiZWluZyBhbiBvcHRpb25h
bCBmZWF0dXJlIGluIHRoZSBaTlMgVFAgaXMKPj4gPj5vcnRob2dvbmFsIHRvIHRoaXMgY29udmVy
c2F0aW9uLiBCdWxsc2hpdCBvciBub3QsIGl0IGVuZHMgdXAgb24KPj4gPj5kZXZpY2VzIHRoYXQg
d2Ugd291bGQgbGlrZSB0byBzdXBwb3J0IG9uZSB3YXkgb3IgYW5vdGhlci4KPj4gPgo+PiA+SSBk
byBub3QgYmVsaWV2ZSBhbnkgb2YgdXMgaGF2ZSBzYWlkIHRoYXQgaXQgaXMgdW5yZWFzb25hYmxl
IHRvCj4+ID5zdXBwb3J0LiBXZSd2ZSBvbmx5IGFza2VkIHRoYXQgeW91IG1ha2UgdGhlIHBhdGNo
ZXMgZm9yIGl0Lgo+PiA+Cj4+ID5BbGwgb2YgdXMgaGF2ZSBjb21tdW5pY2F0ZWQgd2h5IFpvbmUg
QXBwZW5kIGlzIGEgZ3JlYXQgYWRkaXRpb24gdG8gdGhlCj4+ID5MaW51eCBrZXJuZWwuIEFsc28s
IGFzIENocmlzdG9waCBwb2ludHMgb3V0LCB0aGlzIGhhcyBub3QgYmVlbiBhIHNlY3JldAo+PiA+
Zm9yIHRoZSBwYXN0IGNvdXBsZSBvZiBtb250aHMsIGFuZCBhcyBNYXJ0aW4gcG9pbnRlZCBvdXQs
IGhhdmUgYmVlbiBhCj4+ID53YW50ZWQgZmVhdHVyZSBmb3IgdGhlIHBhc3QgZGVjYWRlIGluIHRo
ZSBMaW51eCBjb21tdW5pdHkuCj4+Cj4+ID4KPj4gPkkgZG8gd2FudCB0byBwb2xpdGVseSBwb2lu
dCBvdXQsIHRoYXQgeW91J3ZlIGdvdCBhIHZlcnkgY2xlYXIgc2lnbmFsCj4+ID5mcm9tIHRoZSBr
ZXkgc3RvcmFnZSBtYWludGFpbmVycy4gRWFjaCBvZiB0aGVtIGlzIHBhcnQgb2YgdGhlIHBsYW5l
dCdzCj4+ID5iZXN0IG9mIHRoZSBiZXN0IGFuZCBtb3N0IHdlbGwtcmVzcGVjdGVkIHNvZnR3YXJl
IGRldmVsb3BlcnMsIHRoYXQKPj4gPmxpdGVyYWxseSBoYXZlIGJ1aWx0IHRoZSBzdG9yYWdlIHN0
YWNrIHRoYXQgbW9zdCBvZiB0aGUgd29ybGQgZGVwZW5kcwo+PiA+b24uIFRoZSBzdG9yYWdlIHN0
YWNrIHRoYXQgcmVjZW50bHkgc2VudCBtYW5uZWQgcm9ja2V0cyBpbnRvIHNwYWNlLgo+PiA+VGhl
eSBlYWNoIHVuYW5pbW91c2x5IHNhaWQgdGhhdCB0aGUgWm9uZSBBcHBlbmQgY29tbWFuZCBpcyB0
aGUgcmlnaHQKPj4gPmFwcHJvYWNoIGZvciB0aGUgTGludXgga2VybmVsIHRvIHJlZHVjZSB0aGUg
b3ZlcmhlYWQgb2YgSS9PIHRyYWNraW5nCj4+ID5mb3Igem9uZWQgYmxvY2sgZGV2aWNlcy4gSXQg
bWF5IGJlIHdvcnRoIGJyaW5naW5nIHRoaXMgaW5mb3JtYXRpb24gdG8KPj4gPnlvdXIgZW5naW5l
ZXJpbmcgb3JnYW5pemF0aW9uLCBhbmQgYWxzbyBwb3RlbnRpYWxseSBjb25zaWRlciBab25lCj4+
ID5BcHBlbmQgc3VwcG9ydCBmb3IgZGV2aWNlcyB0aGF0IHlvdSBpbnRlbmQgdG8gdXNlZCB3aXRo
IHRoZSBMaW51eAo+PiA+a2VybmVsIHN0b3JhZ2Ugc3RhY2suCj4+Cj4+IEkgdW5kZXJzdGFuZCBh
bmQgSSBoYXZlIG5ldmVyIHNhaWQgdGhlIG9wcG9zaXRlLgo+Pgo+PiBBcHBlbmQgaXMgYSBncmVh
dCBhZGRpdGlvbiB0aGF0Cj4KPk9uZSBtYXkgaGF2ZSBpbnRlcnByZXRlZCB5b3VyIFNEQyBFTUVB
IHRhbGsgdGhlIG9wcG9zaXRlLiBJdCB3YXMgbm90Cj52ZXJ5IG5ldXRyYWwgdG93YXJkcyBab25l
IEFwcGVuZCwgYnV0IHRoYXQgaXMgb2YgY2F1c2Ugb25lIG9mIGl0cyBsZWFzdAo+cHJvYmxlbXMu
IEJ1dCBJIGFtIGhhcHB5IHRvIGhlYXIgdGhhdCB5b3UndmUgY2hhbmdlZCB5b3VyIG9waW5pb24u
CgpBcyB5b3UgYXJlIHdlbGwgYXdhcmUsIHRoZXJlIGFyZSBzb21lIGNhc2VzIHdoZXJlIGFwcGVu
ZCBpbnRyb2R1Y2VzCmNoYWxsZW5nZXMuIFRoaXMgaXMgd2VsbC1kb2N1bWVudGVkIG9uIHRoZSBi
aWJsaW9ncmFwaHkgYXJvdW5kIG5hbWVsZXNzCndyaXRlcy4gUGFydCBvZiB0aGUgdGFsayB3YXMg
b24gcHJlc2VudGluZyBhbiBhbHRlcm5hdGl2ZSBmb3IgdGhlc2UKcGFydGljdWxhciB1c2UgY2Fz
ZXMuCgpUaGlzIHNhaWQsIEkgYW0gbm90IGFmcmFpZCBvZiBjaGFuZ2luZyBteSBwb2ludCBvZiB2
aWV3IHdoZW4gSSBhbSBwcm92ZW4Kd3JvbmcuCgo+Cj4+IHdlIGFsc28gaGF2ZSBiZWVuIHdvcmtp
bmcgb24gZm9yIHNldmVyYWwgbW9udGhzIChzZWUgcGF0Y2hlcyBhZGRpdGlvbnMgZnJvbQo+PiB0
b2RheSkuIFdlIGp1c3QgaGF2ZSBhIGNvdXBsZSBvZiB1c2UgY2FzZXMgd2hlcmUgYXBwZW5kIGlz
IG5vdCByZXF1aXJlZCBhbmQgSQo+PiB3b3VsZCBsaWtlIHRvIG1ha2Ugc3VyZSB0aGF0IHRoZXkg
YXJlIHN1cHBvcnRlZC4KPj4KPj4gQXQgdGhlIGVuZCBvZiB0aGUgZGF5LCB0aGUgb25seSB0aGlu
ZyBJIGhhdmUgZGlzYWdyZWVkIG9uIGlzIHRoYXQgdGhlIE5WTWUKPj4gZHJpdmVyIHJlamVjdHMg
Wk5TIFNTRHMgdGhhdCBkbyBub3Qgc3VwcG9ydCBhcHBlbmQsIGFzIG9wcG9zZWQgdG8gZG9pbmcg
dGhpcwo+PiBpbnN0ZWFkIHdoZW4gYW4gaW4ta2VybmVsIHVzZXIgd2FudHMgdG8gdXRpbGl6ZSB0
aGUgZHJpdmUgKGUuZy4sIGZvcm1hdHRpbmcgYSBGUwo+PiB3aXRoIHpvbmVkIHN1cHBvcnQpIFRo
aXMgd291bGQgYWxsb3cgX3RvZGF5Xwo+PiBpb2N0bCgpIHBhc3N0aHJ1IHRvIHdvcmsgZm9yIG5v
cm1hbCB3cml0ZXMuCj4+Cj4+IEkgc3RpbGwgYmVsaWV2ZSB0aGUgYWJvdmUgd291bGQgYmUgYSBt
b3JlIGluY2x1c2l2ZSBzb2x1dGlvbiB3aXRoIHRoZSBjdXJyZW50IFpOUwo+PiBzcGVjaWZpY2F0
aW9uLCBidXQgSSBjYW4gc2VlIHRoYXQgdGhlIGdlbmVyYWwgY29uc2Vuc3VzIGlzIGRpZmZlcmVu
dC4KPgo+VGhlIGNvbW1lbnQgZnJvbSB0aGUgY29tbXVuaXR5LCBpbmNsdWRpbmcgbWUsIGlzIHRo
YXQgdGhlcmUgaXMgYQo+Z2VuZXJhbCByZXF1aXJlbWVudCBmb3IgWm9uZSBBcHBlbmQgY29tbWFu
ZCB3aGVuIHV0aWxpemluZyBab25lZAo+c3RvcmFnZSBkZXZpY2VzLiBUaGlzIGlzIHNpbWlsYXIg
dG8gaW1wbGVtZW50IGFuIEFQSSB0aGF0IG9uZSB3YW50cyB0bwo+c3VwcG9ydC4gSXQgaXMgbm90
IGEgZ2VuZXJhbCBjb25zZW5zdXMgb3Igb3Bpbmlvbi4gSXQgaXMgaGFyZCBmYWN0cyBhbmQKPmhv
dyB0aGUgTGludXgga2VybmVsIHNvdXJjZSBjb2RlIGlzIGltcGxlbWVudGVkIGF0IHRoaXMgcG9p
bnQuIE9uZSBtdXN0Cj5pbXBsZW1lbnQgc3VwcG9ydCBmb3IgWk5TIFNTRHMgdGhhdCBkbyBub3Qg
ZXhwb3NlIHRoZSBab25lIEFwcGVuZAo+Y29tbWFuZCBuYXRpdmVseS4gUGVyaW9kLgoKQWdhaW4s
IEkgYW0gbm90IHNheWluZyB0aGUgb3Bwb3NpdGUuIFJlYWQgdGhlIDIgbGluZXMgYmVsb3cuLi4K
Cj4+Cj4+IFNvIHdlIHdpbGwgZ28gYmFjaywgYXBwbHkgdGhlIGZlZWRiYWNrIHRoYXQgd2UgZ290
IGFuZCByZXR1cm4gd2l0aCBhbgo+PiBhcHByb2FjaCB0aGF0IGJldHRlciBmaXRzIHRoZSBlY29z
eXN0ZW0uCj4+Cj4+ID4KPj4gPkFub3RoZXIgYXBwcm9hY2gsIGlzIHRvIHVzZSBTUERLLCBhbmQg
YnlwYXNzIHRoZSBMaW51eCBrZXJuZWwuIFRoaXMKPj4gPm1pZ2h0IGV2ZW4gYmUgYW4gYWR2YW50
YWdlLCB5b3VyIGN1c3RvbWVycyBkb2VzIG5vdCBoYXZlIHRvIHdhaXQgb24gdGhlCj4+ID5MaW51
eCBkaXN0cmlidXRpb24gYmVpbmcgcmVsZWFzZWQgd2l0aCBhIGxvbmcgdGVybSByZWxlYXNlLCBi
ZWZvcmUgdGhleQo+PiA+Y2FuIGV2ZW4gZ2V0IHN0YXJ0ZWQgYW5kIGRlcGxveSBpbiB2b2x1bWUu
IEkuZS4sIHRoZXkgd2lsbCBhY3R1YWxseSBnZXQKPj4gPmZhc3RlciB0byBtYXJrZXQsIGFuZCB5
b3VyIGNvbXBhbnkgd2lsbCBiZSBhYmxlIHRvIHNlbGwgbW9yZSBkcml2ZXMuCj4+Cj4+IEkgdGhp
bmsgSSB3aWxsIHJlZnJhaW4gZnJvbSBkaXNjdXNzaW5nIG91ciBidXNpbmVzcyBzdHJhdGVneSBv
biBhbiBvcGVuIG1haWxpbmcKPj4gbGlzdC4gQXBwcmVjaWF0ZSB0aGUgZmVlZGJhY2sgdGhvdWdo
LiBWZXJ5IGluc2lnaHRmdWwuCj4KPkkgYW0gbm90IGFza2luZyBmb3IgeW91IHRvIGRpc2N1c3Mg
eW91ciBidXNpbmVzcyBzdHJhdGVneSBvbiB0aGUgbWFpbGluZyBsaXN0LiBNeSBjb21tZW50IHdh
cyB0byBnaXZlIHlvdSBnZW51aW5lbHkgYWR2aXNlIHRoYXQgbWF5IHNhdmUgYSBsb3Qgb2Ygd29y
aywgYW5kIG1pZ2h0IGV2ZW4gZ2V0IGJldHRlciByZXN1bHRzLgo+Cj4+Cj4+IFRoYW5rcywKPj4g
SmF2aWVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
