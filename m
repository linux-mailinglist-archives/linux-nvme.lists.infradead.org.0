Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998648020E
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 22:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Ju1jwMO22Xwe0lMPckthb40Cjk+MuhbN9bCh9Ux3mk=; b=sM2+tIIILLIT/wAnN5+IzZB/H
	aE+Yp6l/L0Y4FycK+fVTJDZEWllesVeLtKGD0ur70xQkAjJVFjHy8sdS9mhcTUbP0ukWPHAo5g7YN
	ThHzJnpEx5uKhaTUfaOJkNcfI7rdVNpBaF7hssPW/EwzzkILrZekZeJ505KwGvtPb5RwczyiOj/8M
	iUlsTNdAZ+YW7q+cBuaFuYlmbitIcNckjABa+1/XOPp5GakdznJIGBHDZ8aCLKbwVKEfNRiLrjLPb
	+IDFNB7fejh4dVC4QBRr8FP1GoMUcJF+FIltF1d5wxRVluKnglzoHEn34Rgm1cN4/r7tliB66GJQm
	mKC+vKAJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htebX-0001tm-J9; Fri, 02 Aug 2019 20:56:47 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htebQ-0001tR-HQ
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 20:56:41 +0000
Received: by mail-ot1-f49.google.com with SMTP id n5so79550772otk.1
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 13:56:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S1byOILYBnQFQpGqSu+rmth3ZZ7DXly+eTago7RIKdc=;
 b=LbiHwPOrjanFGAdI1YYLgJimKr3LfDHuCKKmMhs0iP2dKJ9omhEUr2kdyNCK8enVrp
 4EprQ5c/Su/Vw/uT//vKKuI5SIVaDig0hl1id8jIyhHwKmMEJruhENUGSAa5QeCqugFE
 YsD4co8ZOmGskJ91FrQvOYUEbwPCt1xnoxb1RBZeR98vCF/6gdsSrY1e7WFObtyZitvj
 cPXCHNGQefYtUHmiP+buAkR45MIZZGC9Lf8djO/lU0WZZL+txX3g27gO6woBZKbtChBq
 Zbqzc1py8Scrqm8GGtUuqjFBxibtjdnwVEM/9gpD9TPExX2TprqXHHnSOUYVPoGIqKZr
 3Abg==
X-Gm-Message-State: APjAAAV79LDTZZtH/vaH1j47SwH1L6zZGUprqPD271ocRaYHQupHQitX
 hRIApGbUccYmXv9q5PueVFlubhT4
X-Google-Smtp-Source: APXvYqx4w62Sa6DanfbO/8LoAdmBA0qctoK5HaXOYcfoKPG3rBXGFRdY9CuBGDJy9ucNsFfnr6yXLA==
X-Received: by 2002:a9d:63c7:: with SMTP id e7mr104526207otl.165.1564779398508; 
 Fri, 02 Aug 2019 13:56:38 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id k10sm25334674otn.58.2019.08.02.13.56.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 13:56:37 -0700 (PDT)
Subject: Re: nvmet_tcp: panic out of memory on writes
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D165B5@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4ca622f1-9a1d-21e5-cfba-a785dcf4400b@grimberg.me>
Date: Fri, 2 Aug 2019 13:56:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D165B5@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_135640_579793_4827DE28 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Am seeing the following Panic during 100% 4K write activity on NVMf tcp target since 5.2.1_stable.
> Exposed device (ram_disk or actual nvme disk) target makes no difference.
> Testing shows this occurring back on 5.0.7 as well.
> 
> Anyone else see this and working on it, as I dig deeper..

I have not seen this on my test vms (5.2-rcX and 5.3-rc2+ that I tested
with). kmemleak doesn't show anything either...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
