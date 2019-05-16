Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9884420CDE
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wdOHEg1+OF+ujttVC4w4hvn38xx+J6286rcTmQD+Z+c=; b=cqlasatB7ZINnUBMh5rdVG0lK
	eHgNYVZHBSLC1UpPxqN2IkreMGHyecqIZCQBgo0nKnN94vHasKVTp9OJZQrCp8Q5/YDtTADkLk8MY
	YQX7a74DAaDsmsknbBAedkdmVL+4O8vUWBeIOj/6x0TqKfVws03zptWdNTK6rD95hC/GZvX6T4C1Y
	lrT5S7TryC2Vlj7p4MNVtc81Kx7tcYfwWLfNrPDYiIQ22q3x/jnCMLrDEEtG11vxtUzHhxwfKftGx
	jBPijqtGUAwmN3Ls6UNr8AG+jUs/P9gno3YQo/drSM0QPfc4C2BS3yepvjkgDPnusVxemjFxvQfGL
	HHs0V+ARw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJB1-0005cU-9Y; Thu, 16 May 2019 16:24:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJAw-0005cB-4G
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:24:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so1886973plz.1
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=cL2ar56q62eBz+PKo37HIjZPJQRHS1iyxwhHTyHvXS8=;
 b=c7mf52OqbwSpl8FQ0hO50lBgem2LCe9Fknn3AkbK/F7ZKEdctUIglhCKUdYVc9jrui
 MnMI66TUk4n0b5ZYbVfqzNpGhkctVI28bJHoq/s8R2FO/S+QgaNJOKi8FZ/mkMTEx7e4
 S4arOlXECk+5XRqw1in6WMRFYf8W0PcfS7nX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=cL2ar56q62eBz+PKo37HIjZPJQRHS1iyxwhHTyHvXS8=;
 b=cCnHa623yvgkPrnolUfq7+BMbzw8t0L/KmKofAsf+GTA/rHDLAziwokJ9Fh0aDK3NQ
 l/MUZ69ncZ4YBUioZYsFOUKHpYtzRtO6t6uEqx0VMxdOXI2cGofbQml/ct1Y3/Qymd/N
 eZqf0wVsqmLN5Hy7c2MDM3V8LfjmtJLlTo57mzusFzXMnc5wc+/gcwlFQ0nvDpFOo6UN
 vFk7+NDHaZNEWy1cVKfwMVm2X56uqvo4fg5kf4hOFOJXSGJBQj/OKysRnpS82Q8zkDSm
 xu8jf+KAqvnSQNTPdHGsP7B9E5kd9cilEHqpcmFmTaGaID0BPpjT474ss1qY5EaxRmdy
 ceUg==
X-Gm-Message-State: APjAAAVPwE9zGX52/H1Q8ue59rDjDZ0i3aCHXqTFccOkO/W9yzoJdld/
 Nh7pKK9JUdRqfWvOgfdV+fzwlg==
X-Google-Smtp-Source: APXvYqzWV0JBi0sW1YlgNZy1DEWC+yIOOx38GSWj4+TbRkuBI7HMWKyjWk5PDwvCJ1KfGYPeQE32ig==
X-Received: by 2002:a17:902:e9:: with SMTP id
 a96mr24854718pla.37.1558023848845; 
 Thu, 16 May 2019 09:24:08 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g19sm11703792pgj.75.2019.05.16.09.24.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:24:08 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvme: separate out nvme_ctrl_state_name()
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190516083740.95894-1-hare@suse.de>
 <20190516083740.95894-2-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <69728e55-cbc0-6e2a-730b-51bc2e5b7726@broadcom.com>
Date: Thu, 16 May 2019 09:24:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516083740.95894-2-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092410_182076_7765C99B 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNi8yMDE5IDE6MzcgQU0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPiBTZXBhcmF0ZSBv
dXQgbnZtZV9jdHJsX3N0YXRlX25hbWUoKSB0byByZXR1cm4gdGhlIGNvbnRyb2xsZXIgc3RhdGUK
PiBhcyBhIHN0cmluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBz
dXNlLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyB8IDM2ICsrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+ICAgZHJpdmVycy9udm1lL2hvc3QvbnZtZS5o
IHwgIDEgKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlv
bnMoLSkKPgo+CgpSZXZpZXdlZC1ieTrCoCBKYW1lcyBTbWFydMKgIDxqYW1lcy5zbWFydEBicm9h
ZGNvbS5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
