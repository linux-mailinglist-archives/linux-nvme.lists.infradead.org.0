Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF631FD584
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 21:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mFfA+kiElVxhaL0QQkspbf/9zk0wbzO9nAD2/YPTY74=; b=AZnSVOC01Fl4f37gNaieSPsuT
	zMyTz4kz5h821fAVMD6QaTAAjVAy5I5iCre8a1TORAaKq0v0+geyK9OKI45oPtEeyB2XPNUSpsOjy
	EF2QJ+6FnoYj2wzgnHWmA4DiaH4BP9T3pDk8FIEoUQ9HRkXcmvy3MSditGRk/Bvex+rsG5OWoyd1i
	bCMlHNLrUByx1pZl1oJeMx108W1aEhDTwUMMOh/XsyuxUU02vJM0fiitwvXlgsxz2WSuRsMI8snSQ
	mWN8kqVnkeuxfMWoQYNRTAAU0o+eKMhxwI5ydcnJTl3g1MhxOfdnvlVpoQazkOxhTjogJiKCJQ8rI
	ZxmPNyqlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jldv2-0005Zh-L6; Wed, 17 Jun 2020 19:40:20 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlduy-0005Yy-Im
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 19:40:18 +0000
Received: by mail-ej1-x642.google.com with SMTP id dr13so3837284ejc.3
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jun 2020 12:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=PzrErsDtCW0fo0/5Z0gDbq30hKL4/dmBDqmjS52gLHg=;
 b=uTYBzgWii2wzQgZ//qnppAtt96gQW3i1Ovk7UoUSYd5xj3Y0eXpjZclXZ2s5feF+rO
 JFt0MvSbRwGdtwb5X4nfjWeHamSAlXfZ66ApQq5ZY9NIFnT1fKIcfp/xcjM8rDdTyeHu
 MLpMn2uqLm9XbzlsAWwVMhq2ZfwOInh2GDfnG7grnNJYpRlL7cuUnYaXR3fGFhJ+cUC8
 Fm+NJU8LQ0JoHC7+UCJuyqw7EYox+VuMP1X3uplbQI2gSm0jsyxEwJ8l1a8cW1tzHaTO
 Ctds8oL3r5dqo7QTEw0x0C/cde0rR54MGy+aWBWX+MVXNGhjcyltnB4cNBapOYPEhKCt
 JjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=PzrErsDtCW0fo0/5Z0gDbq30hKL4/dmBDqmjS52gLHg=;
 b=MuDEV8mymqW2ZAB2J3O5hgZNRJ6arQtbdT/XHMPDmA0j7G56YmHyAnNDQNUTd4XwqQ
 /RzYyWitGgtaySpIIgxIzpm7PZ/wxdXAK96PwtjnrEKK9Mq4i+0zVQFldwtdls96GA4v
 IOLsoviSTPaQqw9g/CIUjNEiTDhVpelEQuCZA/0mqxqIROGKdGYQ13Zk0UAF6O42ordq
 CP49NVDP3aIUmbmsWcyuEOH7AVTOD2pIRk4AdicHVTlbD9cI2CvKTRpvmp3dRYoU9tks
 oIBqWw7n9E1QdULzu2C7e6E7H35K9m3C7OsqIRY1i51n1aIDgfQt4Rc2llND/3xom5aF
 eEdw==
X-Gm-Message-State: AOAM533sq/YocP/ZqQxTRiKWHg28TfbSQO12Rf0ehMRHcFf0hZgW9ZTd
 MiX+QcBfgfuI00qmSA2sXGsqpQ==
X-Google-Smtp-Source: ABdhPJzaWan5qW2Km9JaZBt5R9h9aOC1UapjvqtyojFCv3z+4KLbN7/jXO9gwOfjhZSZUH9hJQ82kg==
X-Received: by 2002:a17:906:4056:: with SMTP id
 y22mr706652ejj.304.1592422815045; 
 Wed, 17 Jun 2020 12:40:15 -0700 (PDT)
Received: from localhost (ip-5-186-127-235.cgn.fibianet.dk. [5.186.127.235])
 by smtp.gmail.com with ESMTPSA id y62sm362138edy.61.2020.06.17.12.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 12:40:14 -0700 (PDT)
Date: Wed, 17 Jun 2020 21:40:13 +0200
From: Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200617194013.3wlz2ajnb6iopd4k@mpHalley.local>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <20200617074328.GA13474@lst.de>
 <20200617144230.ojzk4f5gcwqonzrf@mpHalley.localdomain>
 <f1bc34e0-c059-6127-d69f-e31c91ce6a9f@lightnvm.io>
 <20200617182841.jnbxgshi7bawfzls@mpHalley.localdomain>
 <MN2PR04MB62236DC26A04A65A242A80D2F19A0@MN2PR04MB6223.namprd04.prod.outlook.com>
 <20200617190901.zpss2lsh6qsu5zuf@mpHalley.local>
 <1ab101ef-7b74-060f-c2bc-d4c36dec91f0@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ab101ef-7b74-060f-c2bc-d4c36dec91f0@lightnvm.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_124016_688103_45FB2133 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
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
 Christoph Hellwig <hch@lst.de>, Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTcuMDYuMjAyMCAyMToyMywgTWF0aWFzIEJqw7hybGluZyB3cm90ZToKPk9uIDE3LzA2LzIw
MjAgMjEuMDksIEphdmllciBHb256w6FsZXogd3JvdGU6Cj4+T24gMTcuMDYuMjAyMCAxODo1NSwg
TWF0aWFzIEJqb3JsaW5nIHdyb3RlOgo+Pj4+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+
PkZyb206IEphdmllciBHb256w6FsZXogPGphdmllckBqYXZpZ29uLmNvbT4KPj4+PlNlbnQ6IFdl
ZG5lc2RheSwgMTcgSnVuZSAyMDIwIDIwLjI5Cj4+Pj5UbzogTWF0aWFzIEJqw7hybGluZyA8bWJA
bGlnaHRudm0uaW8+Cj4+Pj5DYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+OyBLZWl0
aCBCdXNjaCA8S2VpdGguQnVzY2hAd2RjLmNvbT47Cj4+Pj5saW51eC1udm1lQGxpc3RzLmluZnJh
ZGVhZC5vcmc7IGxpbnV4LWJsb2NrQHZnZXIua2VybmVsLm9yZzsgCj4+Pj5EYW1pZW4gTGUgTW9h
bAo+Pj4+PERhbWllbi5MZU1vYWxAd2RjLmNvbT47IE1hdGlhcyBCam9ybGluZyA8TWF0aWFzLkJq
b3JsaW5nQHdkYy5jb20+Owo+Pj4+U2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT47IEpl
bnMgQXhib2UgPGF4Ym9lQGtlcm5lbC5kaz47IEhhbnMKPj4+PkhvbG1iZXJnIDxIYW5zLkhvbG1i
ZXJnQHdkYy5jb20+OyBEbWl0cnkgRm9taWNoZXYKPj4+PjxEbWl0cnkuRm9taWNoZXZAd2RjLmNv
bT47IEFqYXkgSm9zaGkgPEFqYXkuSm9zaGlAd2RjLmNvbT47IEFyYXZpbmQKPj4+PlJhbWVzaCA8
QXJhdmluZC5SYW1lc2hAd2RjLmNvbT47IE5pa2xhcyBDYXNzZWwKPj4+PjxOaWtsYXMuQ2Fzc2Vs
QHdkYy5jb20+OyBKdWR5IEJyb2NrIDxqdWR5LmJyb2NrQHNhbXN1bmcuY29tPgo+Pj4+U3ViamVj
dDogUmU6IFtQQVRDSCA1LzVdIG52bWU6IHN1cHBvcnQgZm9yIHpvbmVkIG5hbWVzcGFjZXMKPj4+
Pgo+Pj4+T24gMTcuMDYuMjAyMCAxOTo1NywgTWF0aWFzIEJqw7hybGluZyB3cm90ZToKPj4+Pj5P
biAxNy8wNi8yMDIwIDE2LjQyLCBKYXZpZXIgR29uesOhbGV6IHdyb3RlOgo+Pj4+Pj5PbiAxNy4w
Ni4yMDIwIDA5OjQzLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPj4+Pj4+Pk9uIFR1ZSwgSnVu
IDE2LCAyMDIwIGF0IDEyOjQxOjQyUE0gKzAyMDAsIEphdmllciBHb256w6FsZXogd3JvdGU6Cj4+
Pj4+Pj4+T24gMTYuMDYuMjAyMCAwODozNCwgS2VpdGggQnVzY2ggd3JvdGU6Cj4+Pj4+Pj4+PkFk
ZCBzdXBwb3J0IGZvciBOVk0gRXhwcmVzcyBab25lZCBOYW1lc3BhY2VzIChaTlMpIENvbW1hbmQg
U2V0Cj4+Pj4+Pj4+PmRlZmluZWQgaW4gTlZNIEV4cHJlc3MgVFA0MDUzLiBab25lZCBuYW1lc3Bh
Y2VzIGFyZSBkaXNjb3ZlcmVkCj4+Pj4+Pj4+PmJhc2VkIG9uIHRoZWlyIENvbW1hbmQgU2V0IElk
ZW50aWZpZXIgcmVwb3J0ZWQgaW4gdGhlIG5hbWVzcGFjZXMKPj4+Pj4+Pj4+TmFtZXNwYWNlIElk
ZW50aWZpY2F0aW9uIERlc2NyaXB0b3IgbGlzdC4gQSBzdWNjZXNzZnVsbHkgCj4+Pj5kaXNjb3Zl
cmVkCj4+Pj4+Pj4+PlpvbmVkIE5hbWVzcGFjZSB3aWxsIGJlIHJlZ2lzdGVyZWQgd2l0aCB0aGUg
YmxvY2sgbGF5ZXIgYXMgYSBob3N0Cj4+Pj4+Pj4+Pm1hbmFnZWQgem9uZWQgYmxvY2sgZGV2aWNl
IHdpdGggWm9uZSBBcHBlbmQgY29tbWFuZCBzdXBwb3J0LiBBCj4+Pj4+Pj4+Pm5hbWVzcGFjZSB0
aGF0IGRvZXMgbm90IHN1cHBvcnQgYXBwZW5kIGlzIG5vdCBzdXBwb3J0ZWQgYnkgCj4+Pj50aGUg
ZHJpdmVyLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PldoeSBhcmUgd2UgZW5mb3JjaW5nIHRoZSBhcHBlbmQg
Y29tbWFuZD8gQXBwZW5kIGlzIG9wdGlvbmFsIG9uIHRoZQo+Pj4+Pj4+PmN1cnJlbnQgWk5TIHNw
ZWNpZmljYXRpb24sIHNvIHdlIHNob3VsZCBub3QgbWFrZSB0aGlzIG1hbmRhdG9yeSBpbgo+Pj4+
Pj4+PnRoZSBpbXBsZW1lbnRhdGlvbi4gU2VlIHNwZWNpZmljcyBiZWxvdy4KPj4+Pj4+Pgo+Pj4+
Pj4+QmVjYXVzZSBBcHBlbmQgaXMgdGhlIHdheSB0byBnbyBhbmQgd2UndmUgbW92ZWQgdGhlIExp
bnV4IAo+Pj4+em9uZWQgYmxvY2sKPj4+Pj4+PkkvTyBzdGFjayB0byByZXF1aXJlZCBpdCwgYXMg
c2hvdWxkIGhhdmUgYmVlbiBvYnZpb3VzIHRvIGFueW9uZQo+Pj4+Pj4+Zm9sbG93aW5nIGxpbnV4
LWJsb2NrIGluIHRoZSBsYXN0IGZldyBtb250aHMuwqAgSSBhbHNvIGhhdmUgdG8gCj4+Pj5zYXkg
SSdtCj4+Pj4+Pj5yZWFsbHkgdGlyZWQgb2YgdGhlIHN0dXBpZCBwb2xpdGljcyB0aGEgeW91ciBj
b21wYW55IHN0YXJ0ZWQgaW4gdGhlCj4+Pj4+Pj5OVk1lIHdvcmtpbmcgZ3JvdXAsIGFuZCB3aWxs
IHNheSB0aGF0IHRoZXNlIGRvIG5vdCBtYXR0ZXIgZm9yIExpbnV4Cj4+Pj4+Pj5kZXZlbG9wbWVu
dCBhdCBhbGwuwqAgSWYgeW91IHRoaW5rIGl0IGlzIHdvcnRod2hpbGUgdG8gc3VwcG9ydCAKPj4+
PmRldmljZXMKPj4+Pj4+PndpdGhvdXQgWm9uZSBBcHBlbmQgeW91IGNhbiBjb250cmlidXRlIHN1
cHBvcnQgZm9yIHRoZW0gb24gdG9wIG9mCj4+Pj4+Pj50aGlzIHNlcmllcyBieSBwb3J0aW5nIHRo
ZSBTQ1NJIFpvbmUgQXBwZW5kIEVtdWxhdGlvbiBjb2RlIHRvIE5WTWUuCj4+Pj4+Pj4KPj4+Pj4+
PkFuZCBJJ20gbm90IGV2ZW4gZ29pbmcgdG8gcmVhZCB0aGUgcmVzdCBvZiB0aGlzIHRocmVhZCBh
cyBJJ20gb24gYQo+Pj4+Pj4+dmFjYXRpb24gdGhhdCBJIGJhZGx5IG5lZWRlZCBiZWNhdXNlIG9m
IHRoZSBTYW1zdW5nIFRXRyBidWxsc2hpdC4KPj4+Pj4+Cj4+Pj4+Pk15IGludGVudGlvbiBpcyB0
byBzdXBwb3J0IHNvbWUgU2Ftc3VuZyBaTlMgZGV2aWNlcyB0aGF0IHdpbGwgbm90Cj4+Pj4+PmVu
YWJsZSBhcHBlbmQuIEkgZG8gbm90IHRoaW5rIHRoaXMgaXMgYW4gdW5yZWFzb25hYmxlIHRoaW5n
IHRvIAo+Pj4+ZG8uIEhvdwo+Pj4+Pj4vIHdoeSBhcHBlbmQgZW5kZWQgdXAgYmVpbmcgYW4gb3B0
aW9uYWwgZmVhdHVyZSBpbiB0aGUgWk5TIFRQIGlzCj4+Pj4+Pm9ydGhvZ29uYWwgdG8gdGhpcyBj
b252ZXJzYXRpb24uIEJ1bGxzaGl0IG9yIG5vdCwgaXQgZW5kcyB1cCBvbgo+Pj4+Pj5kZXZpY2Vz
IHRoYXQgd2Ugd291bGQgbGlrZSB0byBzdXBwb3J0IG9uZSB3YXkgb3IgYW5vdGhlci4KPj4+Pj4K
Pj4+Pj5JIGRvIG5vdCBiZWxpZXZlIGFueSBvZiB1cyBoYXZlIHNhaWQgdGhhdCBpdCBpcyB1bnJl
YXNvbmFibGUgdG8KPj4+Pj5zdXBwb3J0LiBXZSd2ZSBvbmx5IGFza2VkIHRoYXQgeW91IG1ha2Ug
dGhlIHBhdGNoZXMgZm9yIGl0Lgo+Pj4+Pgo+Pj4+PkFsbCBvZiB1cyBoYXZlIGNvbW11bmljYXRl
ZCB3aHkgWm9uZSBBcHBlbmQgaXMgYSBncmVhdCBhZGRpdGlvbiB0byB0aGUKPj4+Pj5MaW51eCBr
ZXJuZWwuIEFsc28sIGFzIENocmlzdG9waCBwb2ludHMgb3V0LCB0aGlzIGhhcyBub3QgYmVlbiAK
Pj4+PmEgc2VjcmV0Cj4+Pj4+Zm9yIHRoZSBwYXN0IGNvdXBsZSBvZiBtb250aHMsIGFuZCBhcyBN
YXJ0aW4gcG9pbnRlZCBvdXQsIGhhdmUgYmVlbiBhCj4+Pj4+d2FudGVkIGZlYXR1cmUgZm9yIHRo
ZSBwYXN0IGRlY2FkZSBpbiB0aGUgTGludXggY29tbXVuaXR5Lgo+Pj4+Cj4+Pj4+Cj4+Pj4+SSBk
byB3YW50IHRvIHBvbGl0ZWx5IHBvaW50IG91dCwgdGhhdCB5b3UndmUgZ290IGEgdmVyeSBjbGVh
ciBzaWduYWwKPj4+Pj5mcm9tIHRoZSBrZXkgc3RvcmFnZSBtYWludGFpbmVycy4gRWFjaCBvZiB0
aGVtIGlzIHBhcnQgb2YgdGhlIHBsYW5ldCdzCj4+Pj4+YmVzdCBvZiB0aGUgYmVzdCBhbmQgbW9z
dCB3ZWxsLXJlc3BlY3RlZCBzb2Z0d2FyZSBkZXZlbG9wZXJzLCB0aGF0Cj4+Pj4+bGl0ZXJhbGx5
IGhhdmUgYnVpbHQgdGhlIHN0b3JhZ2Ugc3RhY2sgdGhhdCBtb3N0IG9mIHRoZSB3b3JsZCBkZXBl
bmRzCj4+Pj4+b24uIFRoZSBzdG9yYWdlIHN0YWNrIHRoYXQgcmVjZW50bHkgc2VudCBtYW5uZWQg
cm9ja2V0cyBpbnRvIHNwYWNlLgo+Pj4+PlRoZXkgZWFjaCB1bmFuaW1vdXNseSBzYWlkIHRoYXQg
dGhlIFpvbmUgQXBwZW5kIGNvbW1hbmQgaXMgdGhlIHJpZ2h0Cj4+Pj4+YXBwcm9hY2ggZm9yIHRo
ZSBMaW51eCBrZXJuZWwgdG8gcmVkdWNlIHRoZSBvdmVyaGVhZCBvZiBJL08gdHJhY2tpbmcKPj4+
Pj5mb3Igem9uZWQgYmxvY2sgZGV2aWNlcy4gSXQgbWF5IGJlIHdvcnRoIGJyaW5naW5nIHRoaXMg
aW5mb3JtYXRpb24gdG8KPj4+Pj55b3VyIGVuZ2luZWVyaW5nIG9yZ2FuaXphdGlvbiwgYW5kIGFs
c28gcG90ZW50aWFsbHkgY29uc2lkZXIgWm9uZQo+Pj4+PkFwcGVuZCBzdXBwb3J0IGZvciBkZXZp
Y2VzIHRoYXQgeW91IGludGVuZCB0byB1c2VkIHdpdGggdGhlIExpbnV4Cj4+Pj4+a2VybmVsIHN0
b3JhZ2Ugc3RhY2suCj4+Pj4KPj4+PkkgdW5kZXJzdGFuZCBhbmQgSSBoYXZlIG5ldmVyIHNhaWQg
dGhlIG9wcG9zaXRlLgo+Pj4+Cj4+Pj5BcHBlbmQgaXMgYSBncmVhdCBhZGRpdGlvbiB0aGF0Cj4+
Pgo+Pj5PbmUgbWF5IGhhdmUgaW50ZXJwcmV0ZWQgeW91ciBTREMgRU1FQSB0YWxrIHRoZSBvcHBv
c2l0ZS4gSXQgd2FzIG5vdAo+Pj52ZXJ5IG5ldXRyYWwgdG93YXJkcyBab25lIEFwcGVuZCwgYnV0
IHRoYXQgaXMgb2YgY2F1c2Ugb25lIG9mIGl0cyBsZWFzdAo+Pj5wcm9ibGVtcy4gQnV0IEkgYW0g
aGFwcHkgdG8gaGVhciB0aGF0IHlvdSd2ZSBjaGFuZ2VkIHlvdXIgb3Bpbmlvbi4KPj4KPj5BcyB5
b3UgYXJlIHdlbGwgYXdhcmUsIHRoZXJlIGFyZSBzb21lIGNhc2VzIHdoZXJlIGFwcGVuZCBpbnRy
b2R1Y2VzCj4+Y2hhbGxlbmdlcy4gVGhpcyBpcyB3ZWxsLWRvY3VtZW50ZWQgb24gdGhlIGJpYmxp
b2dyYXBoeSBhcm91bmQgbmFtZWxlc3MKPj53cml0ZXMuCj4KPlRoZSBuYW1lbGVzcyB3cml0ZXMg
aWRlYSBpcyB2YXN0bHkgZGlmZmVyZW50IGZyb20gWm9uZSBhcHBlbmQsIGFuZCAKPmhhdmUgbGl0
dGxlIG9mIHRoZSBkcmF3YmFja3Mgb2YgbmFtZWxlc3Mgd3JpdGVzLCB3aGljaCBtYWtlcyB0aGUg
Cj53ZWxsLWRvY3VtZW50ZWQgbGl0ZXJhdHVyZSBub3QgYXBwbHkuCgpZb3UgY2FuIGhhdmUgdGhh
dCBjb252ZXJzYXRpb24gd2l0aCB5b3VyIGN1c3RvbWVyIGJhc2UuCgo+Cj4+UGFydCBvZiB0aGUg
dGFsayB3YXMgb24gcHJlc2VudGluZyBhbiBhbHRlcm5hdGl2ZSBmb3IgdGhlc2UKPj5wYXJ0aWN1
bGFyIHVzZSBjYXNlcy4KPj4KPj5UaGlzIHNhaWQsIEkgYW0gbm90IGFmcmFpZCBvZiBjaGFuZ2lu
ZyBteSBwb2ludCBvZiB2aWV3IHdoZW4gSSBhbSBwcm92ZW4KPj53cm9uZy4KPj4KPj4+Cj4+Pj53
ZSBhbHNvIGhhdmUgYmVlbiB3b3JraW5nIG9uIGZvciBzZXZlcmFsIG1vbnRocyAoc2VlIHBhdGNo
ZXMgCj4+Pj5hZGRpdGlvbnMgZnJvbQo+Pj4+dG9kYXkpLiBXZSBqdXN0IGhhdmUgYSBjb3VwbGUg
b2YgdXNlIGNhc2VzIHdoZXJlIGFwcGVuZCBpcyBub3QgCj4+Pj5yZXF1aXJlZCBhbmQgSQo+Pj4+
d291bGQgbGlrZSB0byBtYWtlIHN1cmUgdGhhdCB0aGV5IGFyZSBzdXBwb3J0ZWQuCj4+Pj4KPj4+
PkF0IHRoZSBlbmQgb2YgdGhlIGRheSwgdGhlIG9ubHkgdGhpbmcgSSBoYXZlIGRpc2FncmVlZCBv
biBpcyAKPj4+PnRoYXQgdGhlIE5WTWUKPj4+PmRyaXZlciByZWplY3RzIFpOUyBTU0RzIHRoYXQg
ZG8gbm90IHN1cHBvcnQgYXBwZW5kLCBhcyBvcHBvc2VkIAo+Pj4+dG8gZG9pbmcgdGhpcwo+Pj4+
aW5zdGVhZCB3aGVuIGFuIGluLWtlcm5lbCB1c2VyIHdhbnRzIHRvIHV0aWxpemUgdGhlIGRyaXZl
IChlLmcuLCAKPj4+PmZvcm1hdHRpbmcgYSBGUwo+Pj4+d2l0aCB6b25lZCBzdXBwb3J0KSBUaGlz
IHdvdWxkIGFsbG93IF90b2RheV8KPj4+PmlvY3RsKCkgcGFzc3RocnUgdG8gd29yayBmb3Igbm9y
bWFsIHdyaXRlcy4KPj4+Pgo+Pj4+SSBzdGlsbCBiZWxpZXZlIHRoZSBhYm92ZSB3b3VsZCBiZSBh
IG1vcmUgaW5jbHVzaXZlIHNvbHV0aW9uIAo+Pj4+d2l0aCB0aGUgY3VycmVudCBaTlMKPj4+PnNw
ZWNpZmljYXRpb24sIGJ1dCBJIGNhbiBzZWUgdGhhdCB0aGUgZ2VuZXJhbCBjb25zZW5zdXMgaXMg
ZGlmZmVyZW50Lgo+Pj4KPj4+VGhlIGNvbW1lbnQgZnJvbSB0aGUgY29tbXVuaXR5LCBpbmNsdWRp
bmcgbWUsIGlzIHRoYXQgdGhlcmUgaXMgYQo+Pj5nZW5lcmFsIHJlcXVpcmVtZW50IGZvciBab25l
IEFwcGVuZCBjb21tYW5kIHdoZW4gdXRpbGl6aW5nIFpvbmVkCj4+PnN0b3JhZ2UgZGV2aWNlcy4g
VGhpcyBpcyBzaW1pbGFyIHRvIGltcGxlbWVudCBhbiBBUEkgdGhhdCBvbmUgd2FudHMgdG8KPj4+
c3VwcG9ydC4gSXQgaXMgbm90IGEgZ2VuZXJhbCBjb25zZW5zdXMgb3Igb3Bpbmlvbi4gSXQgaXMg
aGFyZCBmYWN0cyBhbmQKPj4+aG93IHRoZSBMaW51eCBrZXJuZWwgc291cmNlIGNvZGUgaXMgaW1w
bGVtZW50ZWQgYXQgdGhpcyBwb2ludC4gT25lIG11c3QKPj4+aW1wbGVtZW50IHN1cHBvcnQgZm9y
IFpOUyBTU0RzIHRoYXQgZG8gbm90IGV4cG9zZSB0aGUgWm9uZSBBcHBlbmQKPj4+Y29tbWFuZCBu
YXRpdmVseS4gUGVyaW9kLgo+Pgo+PkFnYWluLCBJIGFtIG5vdCBzYXlpbmcgdGhlIG9wcG9zaXRl
LiBSZWFkIHRoZSAyIGxpbmVzIGJlbG93Li4uCj4KPk15IHBvaW50IHdpdGggdGhlIGFib3ZlIHBh
cmFncmFwaCB3YXMgdG8gY2xhcmlmeSB0aGF0IHdlIGFyZSBub3QgCj50cnlpbmcgdG8gYmUgZGlm
ZmljdWx0IG9yIG9waW5pb25hdGVkLCBidXQgcG9pbnQgb3V0IHRoYXQgdGhlIHJlYXNvbiAKPndl
IGdpdmUgeW91IHRoZSBzcGVjaWZpYyBmZWVkYmFjaywgaXMgdGhhdCBpdCBpcyB0aGUgd2F5IGl0
IGlzIGluIHRoZSAKPmtlcm5lbCBhcyB0b2RheS4KCkFnYWluLCB5ZXMsIHdlIHdpbGwgYXBwbHkg
dGhlIGZlZWRiYWNrIGFuZCBjb21lIGJhY2sgd2l0aCBhbiBhcHByb2FjaAp0aGF0IGZpdHMgc28g
dGhhdCB3ZSBjYW4gZW5hYmxlIHRoZSByYXcgWk5TIGJsb2NrIGFjY2VzcyB0aGF0IHdlIHdhbnQg
dG8KZW5hYmxlLgoKPgo+Pgo+Pj4+Cj4+Pj5TbyB3ZSB3aWxsIGdvIGJhY2ssIGFwcGx5IHRoZSBm
ZWVkYmFjayB0aGF0IHdlIGdvdCBhbmQgcmV0dXJuIHdpdGggYW4KPj4+PmFwcHJvYWNoIHRoYXQg
YmV0dGVyIGZpdHMgdGhlIGVjb3N5c3RlbS4KPj4+Pgo+Pj4+Pgo+Pj4+PkFub3RoZXIgYXBwcm9h
Y2gsIGlzIHRvIHVzZSBTUERLLCBhbmQgYnlwYXNzIHRoZSBMaW51eCBrZXJuZWwuIFRoaXMKPj4+
Pj5taWdodCBldmVuIGJlIGFuIGFkdmFudGFnZSwgeW91ciBjdXN0b21lcnMgZG9lcyBub3QgaGF2
ZSB0byAKPj4+PndhaXQgb24gdGhlCj4+Pj4+TGludXggZGlzdHJpYnV0aW9uIGJlaW5nIHJlbGVh
c2VkIHdpdGggYSBsb25nIHRlcm0gcmVsZWFzZSwgCj4+Pj5iZWZvcmUgdGhleQo+Pj4+PmNhbiBl
dmVuIGdldCBzdGFydGVkIGFuZCBkZXBsb3kgaW4gdm9sdW1lLiBJLmUuLCB0aGV5IHdpbGwgCj4+
Pj5hY3R1YWxseSBnZXQKPj4+Pj5mYXN0ZXIgdG8gbWFya2V0LCBhbmQgeW91ciBjb21wYW55IHdp
bGwgYmUgYWJsZSB0byBzZWxsIG1vcmUgZHJpdmVzLgo+Pj4+Cj4+Pj5JIHRoaW5rIEkgd2lsbCBy
ZWZyYWluIGZyb20gZGlzY3Vzc2luZyBvdXIgYnVzaW5lc3Mgc3RyYXRlZ3kgb24gCj4+Pj5hbiBv
cGVuIG1haWxpbmcKPj4+Pmxpc3QuIEFwcHJlY2lhdGUgdGhlIGZlZWRiYWNrIHRob3VnaC4gVmVy
eSBpbnNpZ2h0ZnVsLgo+Pj4KPj4+SSBhbSBub3QgYXNraW5nIGZvciB5b3UgdG8gZGlzY3VzcyB5
b3VyIGJ1c2luZXNzIHN0cmF0ZWd5IG9uIHRoZSAKPj4+bWFpbGluZyBsaXN0LiBNeSBjb21tZW50
IHdhcyB0byBnaXZlIHlvdSBnZW51aW5lbHkgYWR2aXNlIHRoYXQgbWF5IAo+Pj5zYXZlIGEgbG90
IG9mIHdvcmssIGFuZCBtaWdodCBldmVuIGdldCBiZXR0ZXIgcmVzdWx0cy4KPj4+Cj4+Pj4KPj4+
PlRoYW5rcywKPj4+Pkphdmllcgo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbnZtZQo=
