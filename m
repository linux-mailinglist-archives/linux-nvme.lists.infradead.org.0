Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31AC17B009
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 21:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=Ldf9g6uUTTspamwJ0or16nNwx
	Fvr/MSKClSHbCxApDWWmkIXvNBQP8DpEH//eHH2im0+FvbA+nwZXkMIZz0Rbjcw1wFFWv4lqt0szw
	LBL+ra0OViR6VOfWHdXodPULODygkh7W1Tjeblkww1oYST/EBX0lJ0K+8dLGUaoWAJ8+eAfocdt5g
	7NhDiKy8CQzVF1QRHqIhYHNaDcIBAQGhQkT0vUxGztdqqXXOYqU0NGC0IIx92QMZvDqJVLyhh8Gtc
	6c/zN2WWzNAZJXIYMd7cMovxlrPB1K/TJ5FxdbPwq8lC6TKNlPuyr2+MKo+qVh9E3aWHk8oKN7eZJ
	dR8gNDRtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xUf-0007YN-4w; Thu, 05 Mar 2020 20:53:21 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xUZ-0007Xd-Rm
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 20:53:17 +0000
Received: by mail-oi1-f179.google.com with SMTP id p125so238485oif.10
 for <linux-nvme@lists.infradead.org>; Thu, 05 Mar 2020 12:53:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=oMuOVjzh12XyPjbVc/ySdF6ka4+cQhRT66EgZgs9QUySZK/zRRx7p7fIRpF1zMGZ7C
 qZoGMZEFtmtNaNs9AzTtCBtdrK2WTLM5j32CaBpkCbKld2y9539l38D93N6+2zxBsp40
 ZoHlpD2kBwdmwK18jLxvPfUp/hL/rt87FFuDoFPkEfF8BTxHtF859ovP6CphlyZyfsHG
 8BMmJie3xaPjIOSOlWklKPDUhfWoOOIZ+/AhEMeBl0N8UoTaT6q8oKhhcja1Tv7hsc38
 ROEhJyntgRFtQuUh7p3zCRTIBW3yLd8k2abv64OWhL3dc1055rwH2vTrRgGT2f3wyGXn
 kSKA==
X-Gm-Message-State: ANhLgQ0HCHgmQluPaXKTbiLY1yUi8DwNUp07+14VSXM3Ynyju+3eyA7A
 /JTsGj4WVUsLFAjYP+ojOOA=
X-Google-Smtp-Source: ADFU+vvIOSHrAp17ZJykrhuasj6uw5qEn4dzsTVvNnGfSUv+Zof0/zCiD13M6gobDEs7YzSPKxNSAw==
X-Received: by 2002:a54:4e8d:: with SMTP id c13mr233486oiy.27.1583441594570;
 Thu, 05 Mar 2020 12:53:14 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id x3sm2626948otq.30.2020.03.05.12.53.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 12:53:13 -0800 (PST)
Subject: Re: [PATCHv2 1/3] nvme-pci: Remove tag from process cq
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200304181246.481835-1-kbusch@kernel.org>
 <20200304181246.481835-2-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <407ca972-053b-0deb-4417-fc035616faed@grimberg.me>
Date: Thu, 5 Mar 2020 12:53:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200304181246.481835-2-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_125315_905675_E42EAEBB 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
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
Cc: bijan.mottahedeh@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
