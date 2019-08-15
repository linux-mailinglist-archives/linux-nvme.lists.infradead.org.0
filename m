Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787E68F183
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Mf3bEQmz4MVHEORkuT/1hTtXqiumGgZ5VzOoJ3dU6M=; b=iDmHdGk85sLNfYZ5UBMqRCnof
	YY4mjGs97BZoJYH0NuigGI5jFNuWju3/w+140Xylu7xZWTpHttpcxSTe0YgdCdBslPsGC53xSdIxF
	tdOmVkUErQ7tSjlK5UzH8HnSd19fEnq+qc4mAicdVQLMUMx5NuaIBGx+BXOhuxOgeBW0GLb2naTJF
	jV3Vr81ZWOWFXClJeW1uBt90yq7FmhWDLreuPW3dD0zYXH0pLgdCyP4RGAXJsKMpTPQD6fQadXUOo
	2jJ7uM/SOVoF5QJuq/joBSPM64BLIiY1/aOU7SXB57eHT2ctbjsURXQcfS0nHtEs/tJvAWrC0prRS
	FegzwmJ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJAE-0002Hj-MO; Thu, 15 Aug 2019 17:03:50 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJA1-0002HE-RG
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:03:43 +0000
Received: by mail-ot1-f67.google.com with SMTP id k18so7133923otr.3
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:03:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GrHnT/Ku1IAp425NWUZJUzf2MIzBXTEOs7CZA+9J+Ic=;
 b=mzYlWhH0abJ65bqg8xlv/Y0MRUfvq3mjeYgkAQWUFKPrCY+qy3tm+uYnfYRR+/uLKo
 v0EF8BM3d47BqWtqi33gEUlIeKkirYkDgkZAv0YKRV25UB/OVwOdrNCr2fqvhT89t/zg
 Gl9o9at46pEa3tLNGPNl1ihOqHV0LytwQxqIzW3HS4hCTp3v/EFZKfABXQNBmkoucEQU
 17c/wAWX2AmTIxg8nS9f8G4C+3NohUnKTxT2RFjdkGlithuneOanXBYi+M8w/OCEtQer
 shDIFyQoM2lfoWAW7TixyWJZwxzXj6VqHON7WfyPrA2ZEDZBQHRcYmdD2T0dwhe3bPD+
 DTDw==
X-Gm-Message-State: APjAAAUbpBSIWL5TjZ0Hd+fYSSqpcWyHv+ird7hZnLr3RD1Muf317PWK
 wCVFm3hoy7PoXBDpnB4IRRrDGkh1
X-Google-Smtp-Source: APXvYqwl11CZ70h5KgvJIXeDkjHmWot+9WJ7MqVEp0/h1yhndUlEaZmLcoaDhwJ4yLbOx5esaRYDQQ==
X-Received: by 2002:a9d:6749:: with SMTP id w9mr360197otm.293.1565888616296;
 Thu, 15 Aug 2019 10:03:36 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t81sm609677oie.48.2019.08.15.10.03.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:03:35 -0700 (PDT)
Subject: Re: [PATCH] nvmet: read device size in identify-ns command handler
To: Mikhail Malygin <m.malygin@yadro.com>, linux-nvme@lists.infradead.org
References: <20190813093157.21755-1-m.malygin@yadro.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5fdce872-8e34-f34e-6ae8-e67bc2f935ac@grimberg.me>
Date: Thu, 15 Aug 2019 10:03:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813093157.21755-1-m.malygin@yadro.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_100337_881678_98A2B369 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Currently device size is cached in ns->size field on namespace enable, so
> any device size change after that can't bee seen by initiator.
> This patch updates ns->size field in identify-ns command handler,
> so initiator can see new device size after ns-rescan.

What would trigger a ns rescan?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
