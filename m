Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE4C1918EA
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 19:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N/HTrArJCkLm45vhH43cN/keI21WuMbzFNijhdxO7MA=; b=lWXKl8psXIrx0o
	wJ8T+VAKuKvCUp0CkLKEohn3yrvf0geLqPXVvSPgGMVgztpronZYkubyj9G3sGVQxgk4N0/viASB5
	eWBcPoko0VVWQf1hOGzD8R8UXS2ldhPPI6pSvsUnnYRGWb7Q0cOf/cMIRsItFTOAMYTpf0vvSAlvn
	kzAiHHTLXFoDVTXDK9xFn+IoBPkR3nkLN2xOHgB5JNTeEAxu04WL1tgilYHlVVyI568QbLbJG3/GF
	38wcq++cHmEJZieWKIr5APrVgCKZem5gPTdHry3qXzNEDQAwHgezy0pdZXva06NH15nsU9VsRJS8G
	tc19OPMAWI1cuCmmzRPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGoD0-00005d-3q; Tue, 24 Mar 2020 18:23:26 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGoCw-00005F-0S
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 18:23:23 +0000
Received: by mail-pf1-x42e.google.com with SMTP id z25so5387208pfa.5
 for <linux-nvme@lists.infradead.org>; Tue, 24 Mar 2020 11:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=s6d1Xk28wFSHFffu7rm7BObFA7LDIiN8Ht5kHAWECW0=;
 b=cgIZmNF/NI5bWyUiC9OB6CqtRektR29coGi9kW54sqBxB/pFkrbXM1tJN+oUHqeYKH
 R6DkvWSXgohZ4D030AodNBGk0uqvC9MhWYf945nNuOdoSoJ4JZKFff/K2uLUpWvMoBws
 UqIwhlJfSzRC+Daflpl3rBv/IOoehdqwD22/iKt7LsWoNz8PYzqS3ihxMlofCLDTU47W
 VZ5JziPVHbOkKzKZU8Uzyccry26KoUyrmSNRjtG3f57OG/DzoGPqI8lMT/0i9I3FjtTJ
 2sTaD0qEBcDzI60I856REqMcjNP+715DqY+SzXuj3xiAPTSqvyEGDJock476jxHp/qOQ
 BqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=s6d1Xk28wFSHFffu7rm7BObFA7LDIiN8Ht5kHAWECW0=;
 b=AbFyR8Q6kSEi/xUb719bLtX8lyIOaoDm2f8sJZGDuaLT/yVDBs5xCi3YWcsIqVhNSc
 /XCDsgsxX7MwOkexyWJhfZh4MM+YPREGpcsvTV3Nt2AaTl++zvX515FOK4EYqJAED/L3
 HGONBskffpkMM/tXE0LIVM8f1FRpu0iFR0ahM4oN/piABoZdAF9lEvGU/sYGIoUtlt+I
 obFJLKHDYEn4DRiStWPkyvvZ5ATpLGdKoqFfx2AXhzW/Vhio3raArL9WF8MNL6ZcoXhe
 8EKBJkC4SiLq/ocRyVQasgfydeaZ6D2OAeN+bEmdADXdYVIrRUXsb5zlTIT+dDbyI0vB
 DzMw==
X-Gm-Message-State: ANhLgQ1B8AQlk341DmNs6aTGg3Jfz65WrghdO/O0y6pkMoI02/LeZIbh
 KF05Gq5ckFdD3SYpdeV9lxMTZc/vOt3W4/r8g2XipEaZhASVhw==
X-Google-Smtp-Source: ADFU+vtZ0QUe67/L6Z1HauGHu9jDfpwV+O9jpu7xtZDvWXsxqZgp70zNQh6DztxUUhXIBwTysXYxpVTXHlqlX/wgaWc=
X-Received: by 2002:aa7:958f:: with SMTP id z15mr29896087pfj.130.1585074200698; 
 Tue, 24 Mar 2020 11:23:20 -0700 (PDT)
MIME-Version: 1.0
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 24 Mar 2020 20:23:13 +0200
Message-ID: <CAHp75VdqyTYcHzgTnRpUjh4qS0D2h_BWXicvjixWK=7MngXWwQ@mail.gmail.com>
Subject: nvmem: core: use device_register and device_unregister
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_112322_052704_FCF4F161 
X-CRM114-Status: UNSURE (   3.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I suddenly stumbled over
commit be6ca6a7ec4c8d6dd9fe712a798d32a7c19cb04a (dd/driver-core-testing)
Author: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date:   Tue Mar 24 17:15:58 2020 +0000

   nvmem: core: use device_register and device_unregister

in driver-core-next.

I have a question, isn't dev_dbg() there is the reason of split?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
