Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6455E2E86B
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4KcDuNB+rqJIwMNISL97MQ12C2WQuXBWwedN6sv1rmk=; b=OOLxLcU6Q+BNW6Xhy2zftXMAP
	HfhBwVN4LHWL3UFxmq9SJYP5dkCMwe5nvcyJLgrKNhDH5SwMk97idwqI82yZ8+Ih5fTmfQoZQKooH
	7quRCFipOWTfn30+W+PHlDmiope0hq05zqBtbDRagrg3NYfCREJTqDlAvEVOkjRCludaaLrYWmu2y
	9xZBrH8wOi1t9AnrFgTSoj+mKTENtnL7rEznHgjY8LGOmW9Q421Af94Khmllie0SJ8qR3RkE+n6/o
	BfsOjvzjJUjCh/En5zGXDEdaxBirSkJ7mxm+UTW6kU3bhBPvLvqBSC/7CsxGZTjorAkqZhjWfNbRq
	qoDKo+UGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7HE-0005gr-EO; Wed, 29 May 2019 22:42:32 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7H9-0005gX-9m
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:42:28 +0000
Received: by mail-wm1-f65.google.com with SMTP id 7so2581134wmo.2
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 15:42:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OFWTh9Pu4medPp5xJO0fb0ckokt6iQrFBmvnLEjbrG0=;
 b=qn1lK+hUhlymj+u7aR0v5YLXRwmlHVTk5+RX2KkkFdOco11WqJHEpPcyEkhT1GJ0Rt
 kLKM64uq6nW3ZrE6xC/EvQ+WfXqaED+DWXX5Aa3ObsCEE5hYh3ymjQaz34rPCHxc4S8H
 7fsAzY750P33xcUDATXllQbibZENxk/8ltrHwys2j0tqzZzl8bpMh7hOq51L0PDz73HI
 izYBvOXCfcUWvHMJfvqAxNFIYW0GAxbH9+td9Pt7XDi6PvrJ30zfl0bWu/PLuoKKL1wF
 41X5ylo9dW8OuwdgHZ2TbMeRHdGzv2mlERoGSRePpBs5NrZt900l0c2dUVWHuiYzp1It
 ciJg==
X-Gm-Message-State: APjAAAWPLlN0Tj7HcW8jKPjKmSu0r7tUvJC7ox59vFKhvTADprP3rTBU
 YGkNtXUsbSvL55GBQMjgJ7U=
X-Google-Smtp-Source: APXvYqyYoay9HmVc3L7xAbnLMqGkJ6cLRObffxB4mvaUXF40IBDeJ4KqnDL7cvWi7YKrvdY79H7ECA==
X-Received: by 2002:a1c:f916:: with SMTP id x22mr222420wmh.81.1559169745510;
 Wed, 29 May 2019 15:42:25 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id l18sm1977953wrh.54.2019.05.29.15.42.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 15:42:24 -0700 (PDT)
Subject: Re: [PATCH v2 1/7] nvmet: add transport discovery change op
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190514215808.10572-1-jsmart2021@gmail.com>
 <20190514215808.10572-2-jsmart2021@gmail.com>
 <5e71e7be-3ce0-aa3f-4456-7a6d454a3c7d@grimberg.me>
 <72f17092-e068-a13c-9088-59afafcd6157@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <05fce470-7524-aa9f-355c-bff007b9e91f@grimberg.me>
Date: Wed, 29 May 2019 15:42:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <72f17092-e068-a13c-9088-59afafcd6157@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154227_337623_19BC2361 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC9kaXNjb3ZlcnkuYyAKPj4+IGIv
ZHJpdmVycy9udm1lL3RhcmdldC9kaXNjb3ZlcnkuYwo+Pj4gaW5kZXggNWJhZjI2OWYzZjhhLi44
ZWZjYTI2YjQ3NzYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL252bWUvdGFyZ2V0L2Rpc2NvdmVy
eS5jCj4+PiArKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2Rpc2NvdmVyeS5jCj4+PiBAQCAtNDEs
NiArNDEsMTAgQEAgdm9pZCBudm1ldF9wb3J0X2Rpc2NfY2hhbmdlZChzdHJ1Y3QgbnZtZXRfcG9y
dCAqcG9ydCwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBfX252bWV0X2Rpc2NfY2hhbmdlZChwb3J0
LCBjdHJsKTsKPj4+IMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoCBtdXRleF91bmxvY2soJm52
bWV0X2Rpc2Nfc3Vic3lzLT5sb2NrKTsKPj4+ICsKPj4+ICvCoMKgwqAgLyogSWYgdHJhbnNwb3J0
IGNhbiBzaWduYWwgY2hhbmdlLCBub3RpZnkgdHJhbnNwb3J0ICovCj4+PiArwqDCoMKgIGlmIChw
b3J0LT50cl9vcHMgJiYgcG9ydC0+dHJfb3BzLT5kaXNjb3ZlcnlfY2hnKQo+Pj4gK8KgwqDCoMKg
wqDCoMKgIHBvcnQtPnRyX29wcy0+ZGlzY292ZXJ5X2NoZyhwb3J0KTsKPj4KPj4gU28geW91IGFy
ZSBzaG9vdGluZyBmb3IgYm90aCB0cmFuc3BvcnQgYW5kIGRpc2MgYWVuIHRvIGhhcHBlbgo+PiBh
dCB0aGUgc2FtZSB0aW1lPwo+IAo+IHRoZXkgY291bGQgaWYgdGhlIGRpc2NvdmVyeSBjb250cm9s
bGVyIGlzIGEgcGVyc2lzdGVudCBvbmUuCgpUaGF0J3MgZmluZSBJIHN1cHBvc2UuCgpTbyB0aGUg
c2VyaWVzIGxvb2tzIHByZXR0eSByZWFzb25hYmxlIHRvIG1lLiBBbnkgZmVlZGJhY2sgZnJvbQp0
aGUgRkMgZm9sa3M/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1l
Cg==
