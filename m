Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7265220065A
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jun 2020 12:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh8ivMOfC+U4daSdxgerBxaxgD0EWmNZuSR1M32wBkg=; b=D0TZKOp4goKuUY
	y29Xalwop7u3mCvgeGl91yZZIMNO6MeEbYZN0t0MpBMod2uGSUNKun+2Z/qeb7QoXu8EG3ApK4kU1
	QedAeVvW9ffiOKFWxIkgaPwm6F80kUimwTwEq4mwRLNJ2q+7CkZRhJlzFp1kfOC4B9BYRU+m1QlOF
	WiQJ0LN+7Sm4glszViv5zRM90VzHLFtA7DrkaascJovT80cXSruDpw0sev+5crhkt4yE2k0a8O5IG
	mOUsv5X/qynKYp4h74/HpjmnGtsYbaODW8FqPP4F+3YJasAN9CoYlQi7b7NsBpND72M2pZKAJe9Jf
	9pw6/I5FrF0KhRREr/fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEIW-0001ff-8r; Fri, 19 Jun 2020 10:31:00 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEGv-0006Ih-U6
 for linux-nvme@lists.infradead.org; Fri, 19 Jun 2020 10:29:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592562563; x=1624098563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7GIinOH8p1ZZX4LC3Mavr2TqKh+JGhuTeRsnLFfpNXU=;
 b=XUO/spalfPrfwMQ8KiNyQl+m34xpJ4tM1fTplNyRhmBHxc8JHGx2wJa3
 xSGg4Z1zxKBfitYFN5O8rkxSr9QHYaxKoEXKyFqiYHhsj0Z3utgnhhtPD
 NMm3+0aOpYz77PnJ8QmMnNAouS1xg8zw1P3CuNcPI2iLbfelVxjp0uIt4
 VOyrIs3Dh+bmcrfqrGSaLbO5EJI1FnRR/J+j68x28VyTSua2cWtNTBNv9
 4ALIGjav4yL7Q/uSNTEX0DACQwTIWb/JOFIeWkcVpgkRzQZMYNndIIjlp
 u3wCyefGmC45C6C5EIzPyG4G9FdbNPQpm63LFv0JCPpwagyLzAPLy6u2b g==;
IronPort-SDR: tVI71M/pKqUb1Sp1an6EPGGgXWDY7YXPQw65JS+/ZxPAt9hUYlTO1IT2Wm55uvaZSPAfepxCt5
 lUNygBK6IbaI4TbTGjk1foh8ty5FiezKq8+XTwMjpktL7OWGbGT1nQFBzUnVANvwgE3Vgymx/h
 RZn/0a1xatbVWEjfb7nploEH+e3a5/P4gZLJAOq1ehlbQNJlQ30uHm4p9Llikbp+ADHiC0mHDV
 10E5hvW2rEAlfXZgmbt8iWw049yUPq2d9JX+49NKDiz784/hfAME05+1FGBZH5hOGxDLSXitu5
 hFA=
X-IronPort-AV: E=Sophos;i="5.75,255,1589212800"; d="scan'208";a="140669579"
Received: from mail-dm6nam12lp2168.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.168])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jun 2020 18:29:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zpwnn8tTYeOpRM9toBXCTK0MxXdEsC3OWLeaVpoz2YyB6QYjqmzCs5Z914ltm1eNDdijEHhLpU2G6smNmYkqQJMGYju6fTMQUn2zhfkVmPdZpt7KvOxxG36glQx6HqBNC6gtmtWbxZQDoyUvlV3C8p6sJJDW89KMMi76eDkWgPZTj5fWSNrXTtQXLJbngqxYGvl7LLt0RRPuzx99vH6mISbIPUxnhMk5H0Bg30py42hOeO1AElxRzCLt6WfZ1Z+PlWxpNKTkFYCt0AyBjyZVlQOjCOF73xwcaNLbJkOTpUSiUljE8cV6LK3ZGCIjrJ8I0nnt5aAcB7WZ0oKYxZ/RNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7GIinOH8p1ZZX4LC3Mavr2TqKh+JGhuTeRsnLFfpNXU=;
 b=G3eLI4031XpaI1kNXSAlxtUWBcBQz061g9AIxxiXjt9onlm76hgjFntaYSzy/PJzUrmep5p3dYzJJ4TPwXeYeTIbySsX0PovgCkbNCoSAZ3o/3GhLNWEd438EZdi9ay8dYYmESTKX0gyNKddQm4DJxb3/2xqt0pyXuun5WsJt/o3InTEQ1KcsZ+5pZecaAxI2/0xdYsxk+gdjAGYry0rNqzo22hMlr/aGghdlxY0dxfSnwhCXft9C5R0dKVchB5HYACsJGzzrTpB5smERhQa1SWbFlGTXCGMFefjzHcB/XmBjhezP0AU9GAO69AcopBrATm0QjwPKLD9xDtJ07M0ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7GIinOH8p1ZZX4LC3Mavr2TqKh+JGhuTeRsnLFfpNXU=;
 b=gJKiH2wNU3LP3PNHaqeVuNIu4FAEUpK/mvHM5LOuXWCAWur6UdkJOupF+dV9Q7P5d3FtOYj3WMmlWlKcHj44vvDTXhne5g5iZMAnD6wW3ebRif3cXQCi8+gAhSoXo5fvEU985TSe37Ly7QFIsLzyk5vvSFjp7u/3UCwgUO6exFk=
Received: from MN2PR04MB6223.namprd04.prod.outlook.com (2603:10b6:208:db::14)
 by MN2PR04MB5536.namprd04.prod.outlook.com (2603:10b6:208:d6::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Fri, 19 Jun
 2020 10:29:11 +0000
Received: from MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e]) by MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e%4]) with mapi id 15.20.3109.021; Fri, 19 Jun 2020
 10:29:11 +0000
From: Matias Bjorling <Matias.Bjorling@wdc.com>
To: Heiner Litz <hlitz@ucsc.edu>, Keith Busch <kbusch@kernel.org>
Subject: RE: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Topic: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Index: AQHWQ22nWIvFisdy3k6SEN4VUPnblaje3HYAgAAJD4CAAAzEgIAAzUPA
Date: Fri, 19 Jun 2020 10:29:11 +0000
Message-ID: <MN2PR04MB62234880B3FDBD7F9B2229CCF1980@MN2PR04MB6223.namprd04.prod.outlook.com>
References: <20200617182841.jnbxgshi7bawfzls@mpHalley.localdomain>
 <MN2PR04MB62236DC26A04A65A242A80D2F19A0@MN2PR04MB6223.namprd04.prod.outlook.com>
 <20200617190901.zpss2lsh6qsu5zuf@mpHalley.local>
 <1ab101ef-7b74-060f-c2bc-d4c36dec91f0@lightnvm.io>
 <20200617194013.3wlz2ajnb6iopd4k@mpHalley.local>
 <CAJbgVnVo53vLYHRixfQmukqFKKgzP5iPDwz87yanqKvSsYBvCg@mail.gmail.com>
 <20200618015526.GA1138429@dhcp-10-100-145-180.wdl.wdc.com>
 <CAJbgVnVKqDobpX8iwqRVeDqvmfdEd-uRzNFC2z5U03X9E3Pi_w@mail.gmail.com>
 <CY4PR04MB3751E6A6D6F04285CAB18514E79B0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <CAJbgVnVnqGQiLx1PctDhAKkjLXRKFwr00tdTPJjkaXZDc+V6Bg@mail.gmail.com>
 <20200618211945.GA2347@C02WT3WMHTD6>
 <CAJbgVnVxtfs3m6HKJOQw4E1sqTQBmtF_P-D4aAZ5zsz4rQUXNA@mail.gmail.com>
In-Reply-To: <CAJbgVnVxtfs3m6HKJOQw4E1sqTQBmtF_P-D4aAZ5zsz4rQUXNA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ucsc.edu; dkim=none (message not signed)
 header.d=none;ucsc.edu; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [185.50.194.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 917c66f0-fbdd-4d74-6cab-08d8143b9b9c
x-ms-traffictypediagnostic: MN2PR04MB5536:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5536EFCBEB437D33966AEA25F1980@MN2PR04MB5536.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xiJjv3oWmXzf/hV0OpriOHU1G39rKmOBf9pNQKHwA63KHI9X+ZlJhtcRM1RjGZx+HBdqZuBoARYY5dViUc/TAbe+BnDQjIc+Tn6wvFDGSYzFsxS04pI1CbrW01kaGZh821f2o26VHLy1nyv7XfsJ5mWKZlgu6sk7lfGDdtp4QQqfX/AJE/xKVSTYoBE4Tj0IJvzMfoh6eXkuAnGX41hkmgp+Ra6GD0M49AMQ+nZIUKvZE5dNzwYNspqfNDZ/AEu62JKbbKvsy6YjKeQvDjVbatQWwWZPvLL6ZMsKNwEV8x1z/DMeexaPZZnIhRTGMlgN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR04MB6223.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(110136005)(8676002)(5660300002)(2906002)(478600001)(71200400001)(52536014)(7416002)(8936002)(4326008)(55016002)(9686003)(83380400001)(54906003)(186003)(33656002)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(26005)(7696005)(6506007)(86362001)(316002)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: pNFOQpEN7GIE+MXvmAFUTmegSz+2O5c4oMLBugMe0JrsqS5jq7awgGPG4MalK+U4qYLt5QozZPubecKqZBGsEOt0EgJLWz0VcIZL0bxyQPazVk7GeiN4ZgzUalfL5N46wmxyF9ikXnW0gVE1bam8raDop4zScjuZ9ChaBPnhE1eBwjCeQn/cnpPWztCODIf2cLiTtGw/jmuSwpF2ewxvfCDXE7roVF1KqJ9guO55skxMlJLRn/xHa1AHjbPHQA3npl+FwavLsBsXJMqvnPwqNCBYiTkDQqkIcSZu6EYiFtNYrpKm8j7FCY0ZPGpK4tNTkkT7jUzhFdIpebuaaWJwS1khqwRneDLrc91Zum8vnp684lX82vvfrlCBw20a/rwquKI9eaGY1Rs79c1b0+umjCssnzAWIK+7jxUtu8pr3cW01Wx1e9zo2IAeKZYAkBg7ZDxIsxukaxIA9Qg9ecowJQ+Q+m5BRCtYuGuu92PeQRWjXnv4RCmMy9vfnXl02Ewl
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 917c66f0-fbdd-4d74-6cab-08d8143b9b9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 10:29:11.7312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mRGqqjHL+rkislNH/ltaeSw1qBipjua5TZC5Rqy3zWni27o3Vz92mW8KNrMOPBeDfHYCQuxLTMrcAs0+9Id+fQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5536
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_032922_150643_8A41E02B 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?utf-8?B?SmF2aWVyIEdvbnrDoWxleg==?= <javier@javigon.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>,
 =?utf-8?B?TWF0aWFzIEJqw7hybGluZw==?= <mb@lightnvm.io>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIZWluZXIgTGl0eiA8aGxpdHpA
dWNzYy5lZHU+DQo+IFNlbnQ6IEZyaWRheSwgMTkgSnVuZSAyMDIwIDAwLjA1DQo+IFRvOiBLZWl0
aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+DQo+IENjOiBEYW1pZW4gTGUgTW9hbCA8RGFtaWVu
LkxlTW9hbEB3ZGMuY29tPjsgSmF2aWVyIEdvbnrDoWxleg0KPiA8amF2aWVyQGphdmlnb24uY29t
PjsgTWF0aWFzIEJqw7hybGluZyA8bWJAbGlnaHRudm0uaW8+OyBNYXRpYXMgQmpvcmxpbmcNCj4g
PE1hdGlhcy5Cam9ybGluZ0B3ZGMuY29tPjsgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
OyBLZWl0aCBCdXNjaA0KPiA8S2VpdGguQnVzY2hAd2RjLmNvbT47IGxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZzsgbGludXgtDQo+IGJsb2NrQHZnZXIua2VybmVsLm9yZzsgU2FnaSBHcmlt
YmVyZyA8c2FnaUBncmltYmVyZy5tZT47IEplbnMgQXhib2UNCj4gPGF4Ym9lQGtlcm5lbC5kaz47
IEhhbnMgSG9sbWJlcmcgPEhhbnMuSG9sbWJlcmdAd2RjLmNvbT47IERtaXRyeQ0KPiBGb21pY2hl
diA8RG1pdHJ5LkZvbWljaGV2QHdkYy5jb20+OyBBamF5IEpvc2hpIDxBamF5Lkpvc2hpQHdkYy5j
b20+Ow0KPiBBcmF2aW5kIFJhbWVzaCA8QXJhdmluZC5SYW1lc2hAd2RjLmNvbT47IE5pa2xhcyBD
YXNzZWwNCj4gPE5pa2xhcy5DYXNzZWxAd2RjLmNvbT47IEp1ZHkgQnJvY2sgPGp1ZHkuYnJvY2tA
c2Ftc3VuZy5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggNS81XSBudm1lOiBzdXBwb3J0IGZv
ciB6b25lZCBuYW1lc3BhY2VzDQo+IA0KPiBNYXRpYXMsIEtlaXRoLA0KPiB0aGFua3MsIHRoaXMg
YWxsIHNvdW5kcyBnb29kIGFuZCBpdCBtYWtlcyB0b3RhbCBzZW5zZSB0byBoaWRlIHN0cmlwaW5n
IGZyb20gdGhlDQo+IHVzZXIuDQo+IA0KPiBJbiB0aGUgZW5kLCB0aGUgcmVhbCBwcm9ibGVtIHJl
YWxseSBzZWVtcyB0byBiZSB0aGF0IFpOUyBlZmZlY3RpdmVseSByZXF1aXJlcyBpbi0NCj4gb3Jk
ZXIgSU8gZGVsaXZlcnkgd2hpY2ggdGhlIGtlcm5lbCBjYW5ub3QgZ3VhcmFudGVlLiBJIHRoaW5r
IGZpeGluZyB0aGlzIHByb2JsZW0NCj4gaW4gdGhlIFpOUyBzcGVjaWZpY2F0aW9uIGluc3RlYWQg
b2YgaW4gdGhlIGNvbW11bmljYXRpb24gc3Vic3RyYXRlIChrZXJuZWwpIGlzDQo+IHByb2JsZW1h
dGljLCBlc3BlY2lhbGx5IGFzIG91dC1vZi1vcmRlciBkZWxpdmVyeSBhYnNvbHV0ZWx5IGhhcyBu
byBiZW5lZml0IGluIHRoZQ0KPiBjYXNlIG9mIFpOUy4NCj4gQnV0IEkgZ3Vlc3MgdGhpcyBoYXMg
YmVlbiBkaXNjdXNzZWQgYmVmb3JlLi4NCg0KSSdtIGEgYml0IGRlbnNlLCBieSB0aGUgYWJvdmUs
IGlzIHlvdXIgY29uY2x1c2lvbiB0aGF0IFpOUyBoYXMgYSBkZWZpY2l0L2ZlYXR1cmUsIHdoaWNo
IE9DU1NEIGRpZG4ndCBhbHJlYWR5IGhhdmU/IFRoZXkgYm90aCBoYWQgdGhlIHNhbWUgcmVxdWly
ZW1lbnQgdGhhdCBhIGNodW5rL3pvbmUgbXVzdCBiZSB3cml0dGVuIHNlcXVlbnRpYWxseS4gSXQn
cyB0aGUgbmFtZSBvZiB0aGUgZ2FtZSB3aGVuIGRlcGxveWluZyBOQU5ELWJhc2VkIG1lZGlhLCBJ
IGFtIG5vdCBzdXJlIGhvdyBaTlMgc2hvdWxkIGJlIGFibGUgdG8gaGVscCB3aXRoIHRoaXMuIFRo
ZSBnb2FsIG9mIFpOUyBpcyB0byBhbGlnbiB3aXRoIHRoZSBtZWRpYSAoYW5kIE9DU1NEKSwgd2hp
Y2ggbWFrZXMgd3JpdGVzIHJlcXVpcmVkIHRvIGJlIHNlcXVlbnRpYWwsIGFuZCBvbmUgdGhlcmVi
eSBnZXRzIGEgYnVuY2ggb2YgYmVuZWZpdHMuDQoNCklmIHRoZXJlIHdhcyBhbiB1bmRlcnN0YW5k
aW5nIHRoYXQgWk5TIHdvdWxkIGFsbG93IG9uZSB0byB3cml0ZSByYW5kb21seSwgSSBtdXN0IHBy
b2JhYmx5IGRpc2FwcG9pbnQuIEZvciByYW5kb20gd3JpdGVzLCB0eXBpY2FsIGltcGxlbWVudGF0
aW9ucyBlaXRoZXIgdXNlIGEgd3JpdGUtYmFjayBzY2hlbWUsIHRoYXQgc3RvcmVzIGRhdGEgaW4g
cmFuZG9tIHdyaXRlIG1lZGlhIGZpcnN0LCBhbmQgdGhlbiBsYXRlciB3cml0ZSBpdCBvdXQgc2Vx
dWVudGlhbGx5LCBvciB3cml0ZSBhIGhvc3Qtc2lkZSBGVEwgKHdpdGggaXRzIHVzdWFsIG92ZXJo
ZWFkcykuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
