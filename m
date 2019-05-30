Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F762E9FC
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 03:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kx5pUM8yRSyaDhVLT+h8TKf7y3sLqisp5qC0A9Bd/qw=; b=SCurODbJPT9Gn/ej8UXa5zgPb
	XBYqaCn8k8OjyIvMgJRYX1/e43PVtbO0aUlQITIgijKUpDOjiHcvsKWSkes0dxnPm9x9PMzwHssfF
	ce5fzJFv7ngv/XKGPyG/RISber6NanRWVjbUv8MJeKDtBUmZQb56H13Svuu44HtaK8cTCi3PBuvcE
	pitGDpVXwT9dKFTlzoeD2WcVW0UOFq146KGfuLNsoAL0QyGgzuMiHErJ8S0n3q0Z5QLTwrux45PKJ
	TUquzKkG5wJ9WaWuGcB1qmbGRCar7+/9X4aKQDm8NDuYDw4yAqRkxfKYzeCHEQnyZX5uwtJN7yPmI
	TnD/zjvnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW9Ua-00057p-KZ; Thu, 30 May 2019 01:04:28 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW9UW-000572-5k
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 01:04:25 +0000
Received: by mail-wr1-f68.google.com with SMTP id x4so2987355wrt.6
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 18:04:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t6TuRwA7dG3HYJW/kOIB9akc6L46c04sgrqaa3hxrYk=;
 b=O55Tuqh9J4LqTWn8MLdBjbs3xcm1HdBNu1iR1lFbqh/6HEJXtnuWwhnnen330rsIIt
 JC75M5gpW6Fn/Bm7iZAPEHSM3VvvSoeQykDY/yNFEsBh8lREWPHHFMwHBsoZu1pHWvik
 qbCOUuCrDfAYWY+Nj7BZtuX36cOynjeffmZnvPAqKuwpGJB+Dvbq1vAqjAfzDlhwM3cN
 4wHisf4LdbNMCnT7wpSGCzfdwrVIY4i8+icG0D/bwyvTBN0EwxUWpmmQcLJ06iFKhEDB
 vMirwDwGwvrcMOXlwhnXaoXGON0KfNtvlun0oewTkTcYFWaSpeVhxcGDQqVEJkJ1zVba
 R1OQ==
X-Gm-Message-State: APjAAAXB0bFVno/zoD21XWQ69Zvzcgckg9vN8FvpkMqzzsrT+3jPhJj6
 zLkRN7p90TAwMcuY6TWp90Y=
X-Google-Smtp-Source: APXvYqyHO126FUDflSi4tNgUL36BagG3K8lpC6jrOME6yRrYIwomHJz5NPMOzYHTHOea6xj4YUk1FA==
X-Received: by 2002:adf:e584:: with SMTP id l4mr528158wrm.54.1559178262580;
 Wed, 29 May 2019 18:04:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id g11sm750181wrq.89.2019.05.29.18.04.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 18:04:21 -0700 (PDT)
Subject: Re: [PATCH v2 1/7] nvmet: add transport discovery change op
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190514215808.10572-1-jsmart2021@gmail.com>
 <20190514215808.10572-2-jsmart2021@gmail.com>
 <5e71e7be-3ce0-aa3f-4456-7a6d454a3c7d@grimberg.me>
 <72f17092-e068-a13c-9088-59afafcd6157@gmail.com>
 <05fce470-7524-aa9f-355c-bff007b9e91f@grimberg.me>
 <a62e584f-41af-b1d7-686c-ec4144676a38@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1ed2f33d-c09d-cd06-4662-eed27652ff48@grimberg.me>
Date: Wed, 29 May 2019 18:04:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a62e584f-41af-b1d7-686c-ec4144676a38@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_180424_217316_D9C7C8C6 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>> That's fine I suppose.
>>
>> So the series looks pretty reasonable to me. Any feedback from
>> the FC folks?
> 
> in what way ?
> 
> no disagreements here on the list. Already present in the FC-NVME spec.

Just wanted to understand if no disagreements because no one looked, or
because it makes sense to everyone..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
