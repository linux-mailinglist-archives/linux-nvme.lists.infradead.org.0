Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DCB1285A0
	for <lists+linux-nvme@lfdr.de>; Sat, 21 Dec 2019 00:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=48FCZCykqJby1Nizn2K4R7KB3iopQWilWOAX5w7+4YQ=; b=XW3r6NfvRCfoDlldO0GxVEQbf
	4Cc0JQsVqR+62Wk6TXQ/N/bR0kdoWs34zUuUW05KOCcPogYM5Pwjki9vJnKpNMIx3xq+UILCveWkh
	Fj+Rz9lY9hhdhnLjs8vbGs0OG+uFxCzHBLcIa+WTbVC3vTv72ztZ15LIdM2/aiTfyd6C/L0xOt0hF
	4ISrxUIeK+1TIv9+r1SXbXFuM/JmEJ2yXePb409v9RwZMR5A2OKVvTxeO7xu2jHoKjLKKTfC8jaOH
	JGUQPn6NyhJaIJyDmq2ZDsR71Eqd2jTPn7YkAvC4DE3l4KroWtTSNTLdq0YLu9ar3wZ8SA6psQFNa
	igLyff+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiRut-00038D-2n; Fri, 20 Dec 2019 23:42:43 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiRuo-00037s-9u
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 23:42:39 +0000
Received: by mail-ot1-f52.google.com with SMTP id 66so13884612otd.9
 for <linux-nvme@lists.infradead.org>; Fri, 20 Dec 2019 15:42:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rywd45lCr9zri+e0U2CsveMiRIlgE1HFTwz2hnpVboQ=;
 b=YBlHzxP+GlipAZ6UWrL5t9F7Re1+SKyLyvz9d0KGeEKUmjllfsKywPogsHOnSgSZwh
 K0ehjfebg6p5DZv8J+lkagdn0RZsZ2in7ekcJfNWV04wk5jcJq0reQ/6bDE+qNowbbCC
 MF9Vlxng3ydSiUZ4uo2EY6BwXfTn50YiXurpiOfe/3d/Tb5Hlb/vJPA6M6vj4IaavrR3
 VyF/QdSn2QRIpOkGc7ii9xfEX9Dr6ohX+jwGgSlymJzbWujn6hhTyqmVejpQPCybAfjk
 UbQsLO+EIWXRVyQUuoE/kBVjlCw8bD6lpgb2Ez5IBO3ZcdXL29idIhHTXTj+a+tsSeEd
 NFFA==
X-Gm-Message-State: APjAAAXwWkTECeuqgmlpqoUFAik9F8YjuyNFC+qy3173jeR43Z9x3dMi
 nv+DDgmtv78FEMWQtmSGrmU=
X-Google-Smtp-Source: APXvYqxovZd5WMaM/8ZPIU/+au3oDjO1EXl1115zDILfit+fIi/RORaMcj6WTZTLECluqjjh3bNeWw==
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr17027210otq.1.1576885356900; 
 Fri, 20 Dec 2019 15:42:36 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e21sm3716862oib.16.2019.12.20.15.42.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Dec 2019 15:42:34 -0800 (PST)
Subject: Re: Question about nvmetcli (tcp)
To: Sudheendra Sampath <sudheendra.sampath@gmail.com>,
 linux-nvme@lists.infradead.org
References: <CABnqofwdPfb=RfCDUh6kU2CUV4v0xxVaT--rfQOZMJy6DG3MTQ@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <89df70cf-0635-7b38-2504-3c594ff0fe75@grimberg.me>
Date: Fri, 20 Dec 2019 15:42:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CABnqofwdPfb=RfCDUh6kU2CUV4v0xxVaT--rfQOZMJy6DG3MTQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_154238_344206_BADD7E82 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: james.p.freyensee@intel.com, chaitanya.kulkarni@wdc.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAxMi8yMC8xOSAxMTozOCBBTSwgU3VkaGVlbmRyYSBTYW1wYXRoIHdyb3RlOgo+IEhpLAo+
IAo+IEFwb2xvZ2llcyBmb3IgZmxvb2RpbmcgeW91ciBpbmJveC7CoCBJIGdvdCB5b3VyIGNvbnRh
Y3QgaW5mb3JtYXRpb24gZnJvbSAKPiB0aGUgbGludXgtbnZtZSBtYWlsaW5nIGxpc3QuCj4gCj4g
SSBhbSB0cnlpbmcgdG8gc2V0dXAgYSB0YXJnZXQgLT4gaW5pdGlhdG9yIHVzaW5nIG52bWV0Y2xp
LsKgIEJlbG93IGlzIG15IAo+IGpzb24gZmlsZSA6Cj4gCj4gewo+ICDCoCAiaG9zdHMiOiBbXSwK
PiAgwqAgInBvcnRzIjogWwo+ICDCoCDCoCB7Cj4gIMKgIMKgIMKgICJhZGRyIjogewo+ICDCoCDC
oCDCoCDCoCAiYWRyZmFtIjogImlwdjQiLAo+ICDCoCDCoCDCoCDCoCAidHJhZGRyIjogIjE5Mi4x
NjguMTIzLjMyIiwKPiAgwqAgwqAgwqAgwqAgInRyZXEiOiAibm90IHNwZWNpZmllZCIsCj4gIMKg
IMKgIMKgIMKgICJ0cnN2Y2lkIjogIjQ0MjAiLAo+ICDCoCDCoCDCoCDCoCAidHJ0eXBlIjogInRj
cCIKPiAgwqAgwqAgwqAgfSwKPiAgwqAgwqAgwqAgInBvcnRpZCI6IDEsCj4gIMKgIMKgIMKgICJy
ZWZlcnJhbHMiOiBbXSwKPiAgwqAgwqAgwqAgInN1YnN5c3RlbXMiOiBbXQoKWW91IGFyZSBtaXNz
aW5nIHRoZSBzb2Z0IGxpbmsgdGhhdCBiaW5kcyB0aGUgc3Vic3lzdGVtIHRvIHRoZSBwb3J0LgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
