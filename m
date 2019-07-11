Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10F46627B
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 01:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rEkiUSQoMyAXm07HoqdYMuvcRDKi2gEc8zYrGjZyh2s=; b=mFArjE/oHAyqH4c/U9fikzstH
	9m02N/q8pO3MekMSMZelMcIP/dSZzV8OsoDjvzWRFNOD0Qc6igTUKhk/tzit44fu+F/jdC3V7QISH
	YomtD1EHwet875oieLwGLH9bICjcjJJP01nobe3aIsph+7tdmhaz828mQbLBrogAtukntC5FKuab8
	/hTZjbYvza3SHvHmlM9VrMhvyYW9sbpouy6lT/lpGr8r1QIiu3zz3FiYBKnPtinKQRv8FLWQMWCiP
	A3N+Q1rW4U8BhWcsZQFlHiWbXsGpUWNt3dMu1OOgMdnrP9DMDvj9o+puBWHOnZRXKdOewPzSUPeAh
	8HmdJMo5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlimr-0002VB-8k; Thu, 11 Jul 2019 23:47:41 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlimb-0002UA-SX
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 23:47:27 +0000
Received: by mail-ot1-f65.google.com with SMTP id l15so7663413otn.9
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 16:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LfSlo+PSiXNuwiwcgqTreh/b2hlLLK5fSOREyRH39Ko=;
 b=qEXBJ35R8VDZiM119lA3lmcidLUVv47FQTt+1DwpRQxIPIi99RaUqNkd1cnrqnBmCC
 8t0HBoNRia8kk/YyTV1kHyyFBEuI9ZNfliLJCUa+5sInxUcaeXV9ikfigbtxXbxB4NET
 ioz+zcHg5LC9JhUfCBE0trXZ5QXzoqCRAPdPTbrXDHTVmI/tcUkNls34y/5CLiwrft6w
 awMpx5g7zhk/xiB7bQQcWo3oq+iDjljdUALm3nGHteZahRDGYMIvAgLzIuL3XGmBISeV
 JG4igHH94vYVtBy1+u29zfZrnRMpzkessjfufAoTbaboFNVMdtGY1/o50kDVlTAGQTaF
 Nl3w==
X-Gm-Message-State: APjAAAXmT+5MvxBbal+Q87C2WLhRhHQ5MHEUVjhGtLRZ7KgoL3N1IlMg
 xPaS7Ihyt46tQ281KY6eJzw=
X-Google-Smtp-Source: APXvYqx2uSobBq0uvUpu9n9a0S2E9SI0MPC61hlw6dGiXRvcbOiZ8YKxs2y12JNHzPAEYJF+kuGkJw==
X-Received: by 2002:a9d:4b8d:: with SMTP id k13mr6132192otf.61.1562888840720; 
 Thu, 11 Jul 2019 16:47:20 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id g93sm2809755otb.39.2019.07.11.16.47.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 16:47:19 -0700 (PDT)
Subject: Re: [PATCH rfc 6/6] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-7-jsmart2021@gmail.com>
 <d9197c71-2386-ba52-088e-183dad4a662a@grimberg.me>
 <d62f4fa3-b923-389e-56e8-5de4130ffe17@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cd8da5a1-5860-8b2f-4ea4-a6b7bd04c27f@grimberg.me>
Date: Thu, 11 Jul 2019 16:47:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <d62f4fa3-b923-389e-56e8-5de4130ffe17@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_164725_921306_802FD107 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

Cj4+PiArwqDCoMKgICQoSU5TVEFMTCkgLWQgJChERVNURElSKSQoRFJBQ1VURElSKS9kcmFjdXQu
Y29uZi5kCj4+PiArwqDCoMKgICQoSU5TVEFMTCkgLW0gNjQ0IC4vbnZtZi1hdXRvY29ubmVjdC8q
LmNvbmYgCj4+PiAkKERFU1RESVIpJChEUkFDVVRESVIpL2RyYWN1dC5jb25mLmQKPj4KPj4gV2hl
cmUgaXMgdGhpcyBmaWxlPwo+IAo+ID8/IGl0J3Mgbm90IGEgbmV3IGZpbGXCoMKgIGl0J3MgaW5z
dGFsbGluZyA3MC1udm1mLWF1dG9jb25uZWN0LmNvbmYgaW50byAKPiB0aGUgZHJhY3V0IGRpcmVj
dG9yaWVzIHNvIHRoYXQgZHJhY3V0IHdpbGwgaW5zdGFsbCB0aGUgdWRldiBmaWxlcyBpbiB0aGUg
Cj4gcmFtZGlzay4KPiAKPiAtLSBqYW1lcwoKUmlnaHQgOikKCkRpc3JlZ2FyZC4uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
