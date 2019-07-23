Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA0371C6F
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4e/quXu/EDYFlFWlgmUjbSsE/enPncX29Coap3qeHX0=; b=aCbWMMPKejwKsEY8Qd5Kojg+3
	lIyQjaZUtIKGQr9meyCQ3+eGbnJCC8T4KK//QoR1C3+z9cb/dHYOxLZ78ElrqYnR8k4VuH9Ba8hZq
	AnQNK68QR98Oe9kTzcQPFkmXROezDLjnrpQZcSFG2JendJAC02y832hdSxe6xDJrZTDXHs3eU8nK5
	wVUFjmqzCLBYr9KhMxcicIjyudnzDlKdsXilF7rQD39LRdzp1UZ+dFxWsm+np6SvdFKyfvR7jeTZp
	4oBo1LmE8jJYiPmhh3Yw/LhkOUvIBJUryltY5GvpQkc+TbRda0Rzqz6idIEsL/i+qq8wiaO5XDcOl
	ZQ6wbTINQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxHr-0004KQ-B0; Tue, 23 Jul 2019 16:05:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxHK-0004Ap-1R
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 16:04:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so19362905pfp.7
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 09:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=6J48SvRxl9jceiIQzQWw6OWDzeiX0SS9ElCCyMHE3hs=;
 b=dFLH8fJmSMcitnumx8Z08FVEWdXbHr3jGUgMHB1bHiR2cPeTtN9GNXelxrEcI8btGc
 aXhtmGWHUh4gqH81aTeLamRC4cE09Q3gF52xERwne5R8R4LKm3WDaQ+X3ocyJgTJaryJ
 JGJS5sPQEuQEB8RZcxqZxfmqnkdayFGCP1QNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6J48SvRxl9jceiIQzQWw6OWDzeiX0SS9ElCCyMHE3hs=;
 b=Ww9owvAxJajdReGmU2QN+HnU9uM6XuoqWMwlLTp1hD4kXYvRCYuEllUGCyMOWB0cQK
 az/hL3cyXSHVDW2roH0xuitSnibzctDEV2UuEweyZUpDXKD5pR3XT2XfHcHQLR9047EA
 tCm0vPHZsOpOAhQcDbHakrkgX8JuRMH826eGx7jVUqiLI80EWd0o0UfYIxflge8Zhp6W
 7+xA/vxAXFLqJTI2lLLO0cAF/DFEFAao5TDuI5R3Muhix5o0ujeCzBdOqB06Yb3mp8nD
 1RHDsbhBu4rTBBgJEj692bAQo7X4FVyXHX8O61pHTTR63K21Ee18Fk38hD4Dtvkn00Ra
 Cnyg==
X-Gm-Message-State: APjAAAWEp+8/jDD/WDQ3HkLvqhTRWJbQDPG46EqygGuwUGI2zKOekcNR
 0vwA44V1EBOawYxrcGgNO9ju2MpSG34=
X-Google-Smtp-Source: APXvYqzKSTqEzNpvhuuBjLqnEHEmnWP5gd5r5K5J+mBNpS459vziUmGUYXNHnaliJZ5RbMOfE6JZEw==
X-Received: by 2002:aa7:858b:: with SMTP id w11mr6235244pfn.68.1563897876800; 
 Tue, 23 Jul 2019 09:04:36 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v12sm37372785pjk.13.2019.07.23.09.04.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 09:04:36 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
 <4efefb70-7ab1-69af-4f41-63223e9f4ff8@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <d5b4ef61-cf1d-ce9c-1bd0-7f372f874320@broadcom.com>
Date: Tue, 23 Jul 2019 09:04:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4efefb70-7ab1-69af-4f41-63223e9f4ff8@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_090438_201394_FC6B3A04 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA3LzIyLzIwMTkgODo1NyBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPgo+PiArIyBFdmVu
dHMgZnJvbSBwZXJzaXN0ZW50IGRpc2NvdmVyeSBjb250cm9sbGVycyBvciBudm1lLWZjIHRyYW5z
cG9ydCAKPj4gZXZlbnRzCj4+ICtBQ1RJT049PSJjaGFuZ2UiLCBTVUJTWVNURU09PSJudm1lIiwg
RU5We05WTUVfRVZFTlR9PT0iZGlzY292ZXJ5IixcCj4+ICvCoCBFTlZ7TlZNRV9DVFJMX05BTUV9
PT0iKiIsIEVOVntOVk1FX1RSVFlQRX09PSIqIiwgCj4+IEVOVntOVk1FX1RSQUREUn09PSIqIiwg
XAo+PiArwqAgRU5We05WTUVfVFJTVkNJRH09PSIqIiwgRU5We05WTUVfSE9TVF9UUkFERFJ9PT0i
KiIsIFwKPj4gK8KgIFJVTis9Ii91c3IvYmluL3N5c3RlbWN0bCAtLW5vLWJsb2NrIHN0YXJ0IAo+
PiBudm1mLWNvbm5lY3RALS1kZXZpY2U9JGVudntOVk1FX0NUUkxfTkFNRX1cdC0tdHJhbnNwb3J0
PSRlbnZ7TlZNRV9UUlRZUEV9XHQtLXRyYWRkcj0kZW52e05WTUVfVFJBRERSfVx0LS10cnN2Y2lk
PSRlbnZ7TlZNRV9UUlNWQ0lEfVx0LS1ob3N0LXRyYWRkcj0kZW52e05WTUVfSE9TVF9UUkFERFJ9
LnNlcnZpY2UiCj4KPiBKYW1lcywgc2hvdWxkbid0IHRoaXMgYmUgL2Jpbi9zeXN0ZW1jdGw/CgpJ
IGRvbid0IGJlbGlldmUgc28uwqDCoCBPbiB0aGUgZGlzdHJvcyBJIGNoZWNrZWQsIC9iaW4vc3lz
dGVtY3RsIGlzIGEgc29mdCAKb3IgaGFyZCBsaW5rIHRvIC91c3IvYmluL3N5c3RlbWN0bAoKLS0g
amFtZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
