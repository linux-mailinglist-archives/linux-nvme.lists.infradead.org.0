Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E45B126E
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Sep 2019 17:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SLUxEjstswUBYpV1USOlm68nauBsI8Xl0DyVnNSbw4k=; b=UefHAFo0d7eGUgr+APrZj6YAl
	HnjDOzVaEcPXG84gYSKlvQbBC55lPRc8EH1KWT21rNV2vh7RGBNGrhnQ3V2ARKI4JJDOv8bGx88Pe
	QriSW/A4wWJ0Xg0lGe2rZG1VWJ6YYtBslL+Pkq5p9GPC3xFn96+Q5Yqub3gGQy3uFiQG7KNy4u13j
	K1rpq0B1aK1UNnWKNVhLoMbaDgCSNfEodcQlMTo7Tpgtiaruu0Osh4YLPsXEw3jTBHrDWyb/38zi1
	cJLimEGxHunHGk+P4GBqkpIJDAkvAn59NP+IFbss8piAUteED98AxEs7xchk4V3ZISdGiwVZAYAOL
	vTOZWtbVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8RMa-000886-6Y; Thu, 12 Sep 2019 15:50:28 +0000
Received: from mail-pl1-f175.google.com ([209.85.214.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8RML-00087c-GB
 for linux-nvme@lists.infradead.org; Thu, 12 Sep 2019 15:50:15 +0000
Received: by mail-pl1-f175.google.com with SMTP id s17so7058182plp.2
 for <linux-nvme@lists.infradead.org>; Thu, 12 Sep 2019 08:50:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=n9/mVvbc+FJD5lFAC39ToEnsu4tlFlkzdP2wms0HhJ0=;
 b=GjO45hUMgjhxBsFnGWfqq+6+g+uS0LmzYD0R3Efst64TAmH7DQTC2RPUl87IEXys4y
 tUlxBW9r5AIHA3NpqbUX5G4tuJJWj2nsFcfYnncc18D6a45m9D781nUueaI/gQcKe/qz
 emIN/+XYvKYt36Seaol+NB0fdBMdLygbWv9xxBScwNovBYQ86zGTqQnxWFDxEnzXrrDg
 yOCh4/zRXfEGmnv61ezE4BtGawfsQwut9MmQ3GhGrf+XsgEMRKqI6xbczYjsHIKn4j0E
 fp9XMtigfisMMnNIoL7OwB2p+DB4mC2mrI4ZmnIGkZpcSLr3Of2lOwytFCRk1cmC9Lrb
 VdMw==
X-Gm-Message-State: APjAAAUpvHR5nCeZSLQhHDs2yi+Ho78v/Nn4f4XPhiZzjbQi5mKblMYs
 D8+pPohwAJjYkBALkKsQl047Vr+H
X-Google-Smtp-Source: APXvYqwmfP22UCWkotQ3QsgwB3qd2BMkIda70ZNXGoNYvqXcxbUT3paCeihWH8yMd9BzVUStamjWsw==
X-Received: by 2002:a17:902:7d90:: with SMTP id
 a16mr5869781plm.239.1568303411679; 
 Thu, 12 Sep 2019 08:50:11 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c36:579b:9814:69b7?
 ([2601:647:4800:973f:c36:579b:9814:69b7])
 by smtp.gmail.com with ESMTPSA id q71sm381851pjb.26.2019.09.12.08.50.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 08:50:10 -0700 (PDT)
Subject: Re: [PATCH] nvmet: fix a wrong error status returned in error log page
To: amit.engel@dell.com, linux-nvme@lists.infradead.org
References: <20190912052939.105578-1-amit.engel@dell.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a156f079-356d-54db-f1cd-3530184f5fef@grimberg.me>
Date: Thu, 12 Sep 2019 08:50:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190912052939.105578-1-amit.engel@dell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_085013_547831_C837913B 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.175 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

Applied to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
