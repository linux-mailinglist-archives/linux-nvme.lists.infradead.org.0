Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D02D1BD0CE
	for <lists+linux-nvme@lfdr.de>; Wed, 29 Apr 2020 02:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=cMvDFmG4RwaMbLGf2ztLoEMxt
	eNaPrUkuzlXhMwozSIXoUY23qD9XrES2wz/G38vqu/7ecr1KEJ7txUB3QISZtLZuDnAcE2DFzrXSo
	v2oO2Ib6sq6hQzg8tJ0N00wxiMugcvyfOH7isQvRj8yUG5Xtk2GCf6RnAxeUjVSpDLAc9UP17Gz57
	Bl6butb+sJiRP1LArW3etJ9gmYZhhEyLc3j/BLXjoLXbRzlYCSnT8AddwTvEEbAoWwcr7b+amGDEA
	5g0HXYS2n1+2LweEaDOPlTAgTYttVffeqGMRQsv5A4cBe+dvXAwaDNej9pYTIJDxL4noNHXD8S6eW
	Vuq96HFjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTaG2-0007kp-TK; Wed, 29 Apr 2020 00:07:22 +0000
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTaFx-0007eo-Vk
 for linux-nvme@lists.infradead.org; Wed, 29 Apr 2020 00:07:19 +0000
Received: by mail-wr1-f47.google.com with SMTP id f13so358672wrm.13
 for <linux-nvme@lists.infradead.org>; Tue, 28 Apr 2020 17:07:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=K95GmB0SdNCKcG5HnUmd8Sa+QccGLU9EGkNWh6AOaAkF+vN+J4QnFOn4osPoXIE/3L
 76x1jO/lK2KcYO2INA+hFq+6tgFUJ2aTupko6ic//LAh40dS8ISfb7W3pXo7YY0sBHmS
 zQW97PLfCNTAvh+GbI0ftQMxppzZHs6yQWHZNNOxp3klmbLADjYmew6QXuuLOFB7OEEf
 27UhwCpb1WIJbqjDDmWzN85kgTaxqdygBLdBom2aGuLhF0HRw6rfHjI90mLbyK4tiMUJ
 j9fXN4TqR+Dbr1RY1bGUUYCei3isR33Rtu/sEmvSKyT98NfAImHN5w9N8E8uMiKuEkpz
 G6GA==
X-Gm-Message-State: AGi0Pubs3KBXms23GxpHWuSy0d2qqnkKYCOOHW6RikgKEB/84/hudr+2
 ucNHZejzcj6N+4dAMee6p7NDn3nT
X-Google-Smtp-Source: APiQypL+ytgy3sOT6vQUn2OMnaWMN7RKyr6DbK+7JjJv2E0rvPVD2FRT5E5BrNF7eN+KecGrxpbOtA==
X-Received: by 2002:adf:f54c:: with SMTP id j12mr33828709wrp.183.1588118836384; 
 Tue, 28 Apr 2020 17:07:16 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5185:4503:ed8e:c2bb?
 ([2601:647:4802:9070:5185:4503:ed8e:c2bb])
 by smtp.gmail.com with ESMTPSA id b66sm5361357wmh.12.2020.04.28.17.07.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 17:07:15 -0700 (PDT)
Subject: Re: [PATCHv2] nvme-pci: remove volatile cqes
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200428142156.2269926-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d7c959c4-4b74-6def-1328-60cf0846270a@grimberg.me>
Date: Tue, 28 Apr 2020 17:07:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428142156.2269926-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_170718_020254_5D1B18EE 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.47 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
