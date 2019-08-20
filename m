Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D1F96812
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 19:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xStRUl/msNKSCdvS6Gb86mYnmvS35ZnX2+oenVd7vps=; b=LHjiDjo54L2VY8vmYEkDXVzSL
	xnT9iuWLPh7vnOkYW0THyspvnMvjxyRACzvAuiAnK5aKIV1N3HJxS27GuRtc6ca2LVFFVa3LqNTa2
	MA3ja2ko3bQ8Z8Js/TvB/0GZlX4yM/hfoDaClhCkPsdOGYAl68Wyz0YGwICrP2+oAXh243heL/E/x
	XMZMCM+Js+CHplScRuzBUWOXXT4Leg5viXMuJ2iDv/eMQ9FTpFlisaVbBioZ0Xsh+E5h5lXrtpK7H
	qXiWxx804EfjthCu+hwHaB5690+/9JZ9MpyKqqwOk/hiC1Bqd89By0FVbswTZCvHthoRZzHHYe5uG
	/pTrAnQpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08Le-0003ju-Nz; Tue, 20 Aug 2019 17:55:10 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i08LY-0003Cu-Sk
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 17:55:06 +0000
Received: by mail-ot1-f50.google.com with SMTP id e12so5847317otp.10
 for <linux-nvme@lists.infradead.org>; Tue, 20 Aug 2019 10:55:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RWJ6swHyq/g+wNW09x/SpPUvKn5UMsfXEwlPpk3sMbw=;
 b=saIaFw8TbLFD+720pSBeyG7Cuq6NrLarq2yurMakIOFL5ENgN/cDpF/2qgnEE/htwg
 i4DPGj14O36qzLnXXQTNeAlBs+tVbadLA0jldPMj0gr8MJOGTW+PGn8EleU7GHJbEWL1
 ioqYtni33jhXYUXdTDXUREqgB81ZJ9xYG7CDzfqJd9VKzac/8tujJcCMpHc1R7pdiOrl
 O+NUwy6nKuZ/t4xPfNTyV66p6wh16q0FiUn9rCsLVdtH6LDiZYS4vOpzwNhApEPWtaYX
 VV6NvHt5g68cGO+FwbIG8tt7hq5NxMjHF07MyvU3VmzCtp5OEm7exstYBq+DQsMQ+aOB
 autg==
X-Gm-Message-State: APjAAAW0hi9umRqSYx48xD2w0Ux6z+JojK56vSp4Ra28Gs4cjYOBwIZC
 Gbdm2D9sx7JNuEJ+t+17keI=
X-Google-Smtp-Source: APXvYqwOx7CqR7rx9g9lrqrtQn8mOhZZZHgUb88mcrl9jmFfL3aORuwK5O3wQwFBhyYQgVwxPI92hQ==
X-Received: by 2002:a9d:7c97:: with SMTP id q23mr23393950otn.271.1566323703601; 
 Tue, 20 Aug 2019 10:55:03 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o26sm6426747otl.34.2019.08.20.10.55.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 10:55:02 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c30e51da-9ef1-cfb4-c950-06fe218f7a54@grimberg.me>
Date: Tue, 20 Aug 2019 10:55:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_105504_935381_93E22CAE 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks fine,

Applied to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
